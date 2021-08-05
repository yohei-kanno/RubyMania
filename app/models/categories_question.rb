class CategoriesQuestion < ApplicationRecord
  belongs_to :category
  belongs_to :question
  
  validates :category_id, uniqueness: { scope: :question_id } 
end
