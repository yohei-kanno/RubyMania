class RemoveQuestionRecordFromStudyRecords < ActiveRecord::Migration[6.1]
  def up
    remove_column :study_records, :question_record, :string
  end
  
  def down
    add_column :study_records, :question_record, :string
  end
end
