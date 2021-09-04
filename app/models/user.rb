class User < ApplicationRecord
  authenticates_with_sorcery!

  has_one_attached :avatar

  has_many :study_records, dependent: :destroy

  enum admin: { general: false, admin: true }

  validates :admin, inclusion: %w[admin general]
  validates :nickname, presence: true
  validates :email, presence: true, uniqueness: true

  validates :agreement, acceptance: { allow_nil: false, message: 'に同意してください', on: :create }

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, length: { minimum: 6 }, presence: true, if: lambda {
                                                                                  new_record? || changes[:crypted_password]
                                                                                }

  scope :level_upper, ->(i) { order(level: :desc).limit(i) }

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
