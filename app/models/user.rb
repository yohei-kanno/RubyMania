class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :authentications, dependent: :destroy
  accepts_nested_attributes_for :authentications

  has_many :study_records, dependent: :destroy
  enum admin: { general: false, admin: true }

  validates :admin, inclusion: %w[admin general]
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def point_up!(point)
    return if point.nil?

    self.experience_point += point
    save!
  end

  def level_up?
    next_level_point = LevelStatus.find_by(level: level + 1).required_experience_points
    return unless self.experience_point >= next_level_point

    self.level += 1
    save!
  end

  def average_score(category_id)
    category_score = study_records.where(category_id: category_id).pluck(:score)
    return 0 if category_score.empty?

    begin
      your_average_score = category_score.sum / category_score.length.to_f
      your_average_score.round(1)
    rescue ZeroDivisionError
      0
    end
  end

  def dev(category_id)
    score = category_score(category_id)
    return 0 if score.empty?

    avg = score.sum / score.length
    score1 = score.map { |x| (x - avg)**2 }
    std = Math.sqrt(score1.sum / score.length)
    ((average_score(category_id) - avg) * 10 / std + 50).round(1)
  rescue ZeroDivisionError
    0
  end

  private

  def category_score(category_id)
    StudyRecord.where(category_id: category_id).pluck(:score)
  end
end
