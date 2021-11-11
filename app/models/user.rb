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
    self.experience_point += point
    save!
  end

  def level_up?
    next_level_point = LevelStatus.find_by(level: level + 1).required_experience_points
    return unless self.experience_point >= next_level_point

    self.level += 1
    save!
  end
end
