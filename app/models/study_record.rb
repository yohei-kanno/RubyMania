class StudyRecord < ApplicationRecord
  belongs_to :user
  belongs_to :category
  
  class << self
    def create_record(user, category, point)
      StudyRecord.create(user: user, category: category, studied_at: Time.zone.now, score: point)
    end

    def all_user_average_score(i)
      sum_score = StudyRecord.where(category_id: i).pluck(:score)
      return if sum_score.empty?

      sum_score.sum / sum_score.length
    end
  end
  scope :recent, -> { includes(:category).order(id: "desc") }
end

  
