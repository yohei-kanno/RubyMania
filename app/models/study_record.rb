class StudyRecord < ApplicationRecord
  belongs_to :user
  belongs_to :category

  def self.create_record(user, category, point)
    StudyRecord.create(user: user, category: category, studied_at: Time.zone.now, score: point)
  end

  scope :recent, -> { includes(:category).order(id: "desc") }
  
end
