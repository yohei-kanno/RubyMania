class AddColmunQuestions < ActiveRecord::Migration[6.1]
  def up
    add_column :questions ,:commentary, :text, default: "まだ解説はありません"
  end
  
  def down
    remove_column :questions ,:commentary, :text, default: "まだ解説はありません"
  end
end
