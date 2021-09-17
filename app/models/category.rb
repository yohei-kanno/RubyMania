class Category < ApplicationRecord
  has_many :categories_questions, dependent: :destroy
  has_many :study_records, dependent: :destroy
  has_many :questions, through: :categories_questions
  

  def title
    case name
    when "String(文字列)" then
      "Stringです"
    when "Integer(数値)" then
        "Integerです"
    else
      "その他"
    end
  end
    
end
