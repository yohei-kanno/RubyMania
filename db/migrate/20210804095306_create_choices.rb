class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.references :question, null: false, foreign_key: true
      t.text :content, null: false
      t.boolean :answer, null: false
      t.timestamps
    end
  end
end
