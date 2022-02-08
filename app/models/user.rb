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

  def average_score(i)
    arr = study_records.where(category_id: i).pluck(:score)
    return 0 if arr.empty?

    begin
      your_average_score = arr.sum / arr.length.to_f
      your_average_score.round(1)
    rescue ZeroDivisionError => e
      0
    end
  end

  def dev(i)
    return 0 if arr_x(1).empty?

    avg = arr_x(i).sum / arr_x(i).length
    arr1 = arr_x(i).map { |x| (x - avg)**2 }
    std = Math.sqrt(arr1.sum / arr_x(i).length)
    ((average_score(i) - avg) * 10 / std + 50).round(1)
  rescue ZeroDivisionError => e
    0
  end

  private

  def arr_x(i)
    StudyRecord.all.where(category_id: i).pluck(:score)
  end
end
