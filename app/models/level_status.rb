class LevelStatus < ApplicationRecord
  def self.next_level(user)
    level = find_by(level: user.level + 1)
    (level.required_experience_points - user.experience_point) / 10
  end
end
