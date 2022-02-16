class Question < ApplicationRecord
  extend OrderAsSpecified
  has_many :choices, dependent: :destroy

  has_many :categories_questions, dependent: :destroy
  has_many :categories, through: :categories_questions

  scope :random, ->(num) { includes(:choices).sample(num) }
  scope :selected_questions, ->(question_ids) { includes(:choices).where(id: question_ids).order_as_specified(id: question_ids) }
end
