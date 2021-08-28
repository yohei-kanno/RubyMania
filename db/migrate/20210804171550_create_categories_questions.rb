class CreateCategoriesQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :categories_questions do |t|
      t.references :question, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.timestamps
    end

    add_index :categories_questions, %i[question_id category_id], unique: true
  end
end
