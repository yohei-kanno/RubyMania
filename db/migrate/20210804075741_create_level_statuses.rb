class CreateLevelStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :level_statuses do |t|
      t.integer :level, default: 2, null: false
      t.integer :required_experience_points, null: false
      t.timestamps
    end
  end
end
