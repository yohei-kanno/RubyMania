class AddAvatarsToUsers < ActiveRecord::Migration[6.1]
  def up
    add_column :users, :remote_avatar_url, :string
  end
  
  def down
    remove_column :users, :remote_avatar_url, :string
  end
end
