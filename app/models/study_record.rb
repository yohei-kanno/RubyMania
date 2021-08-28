class StudyRecord < ApplicationRecord
  belongs_to :user
  belongs_to :category

  def self.create_record(user, category, choices_ids, point)
    StudyRecord.create(
      user_id: user.id,
      category_id: category.id,
      question_record: choices_ids,
      studied_at: Time.zone.now,
      score: point
    )
  end

  scope :recent, -> { includes(:category).order(id: "desc") }
end
