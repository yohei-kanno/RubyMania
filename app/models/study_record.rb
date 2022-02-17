class StudyRecord < ApplicationRecord
  belongs_to :user
  belongs_to :category

  class << self
    def create_record_and_point_up!(user, category, point)
      ActiveRecord::Base.transaction do
        user.study_records.create(category: category, start_time: Time.zone.now, score: point)
        user.point_up!(point)
      end
    end

    def all_user_average_score(category_id)
      sum_score = StudyRecord.where(category_id: category_id).pluck(:score)
      return 0 if sum_score.empty?

      average_score = sum_score.sum / sum_score.length.to_f
      average_score.round(1)
    end
  end

  scope :recent, -> { includes(:category).order(id: "desc") }
end
