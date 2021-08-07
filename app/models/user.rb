class User < ApplicationRecord
  authenticates_with_sorcery!
  
  has_one_attached :avatar
  
  has_many :study_records, dependent: :destroy
  
  enum admin: { general: false, admin: true }
  validates :admin, inclusion: ["admin", "general"]
  
  validates :nickname, presence: true
  validates :email, presence: true, uniqueness: true
  
  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  
  
  scope :level_upper, -> { order(level: :desc).limit(9) }
  
  def level_up!(point)
    self.experience_point += point
    self.save!
  end
    
  def level_up?
    next_level_point = LevelStatus.find_by(level: self.level + 1).required_experience_points
    if self.experience_point >= next_level_point
      self.level += 1
      self.save!
    end
  end
end
  
