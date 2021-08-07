class Category < ApplicationRecord
  has_many :categories_questions, dependent: :destroy
  has_many :study_records, dependent: :destroy
  has_many :questions, through: :categories_questions
end
