class Question < ApplicationRecord
  has_many :choices, dependent: :destroy
  
  has_many :categories_questions
  has_many :categories, through: :categories_questions
end
