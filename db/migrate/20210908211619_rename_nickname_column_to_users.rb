class RenameNicknameColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :nickname, :name
  end
end
