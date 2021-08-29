class RemovePointFromQuestions < ActiveRecord::Migration[6.1]
  def up
    remove_column :questions, :point, :integer
  end
  
  def down
    add_column :questions, :point, :integer
  end
end
