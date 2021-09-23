class AddColumnToUses < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :crypted_password, :string
    add_column :users, :salt, :string
  end
  
  def down
    remove_column :users, :crypted_password, :string
    remove_column :users, :salt, :string
  end
  
end
