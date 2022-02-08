class RenameStudiedAtColumnToStudyRecords < ActiveRecord::Migration[6.1]
  def change
    rename_column :study_records, :studied_at, :start_time
  end
end
