class RemovePasswordFromUsers < ActiveRecord::Migration[6.1]
  def up
    remove_column :users, :crypted_password, :string
    remove_column :users, :salt, :string
  end
  
  def down
    add_column :users, :crypted_password, :string
    add_column :users, :salt, :string
  end
end
