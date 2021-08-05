class CreateStudyRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :study_records do |t|
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :question_record, null: false
      t.datetime :studied_at, null: false
      t.integer :score, null: false
      t.timestamps
    end
  end
end
