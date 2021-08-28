class SorceryCore < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :nickname, null: false
      t.string :email, null: false
      t.string :crypted_password
      t.string :salt
      t.boolean :admin, null: false, default: false
      t.integer :level, null: false, default: 1
      t.integer :experience_point, null: false, default: 0
      t.timestamps null: false
    end
    add_index :users, :email, unique: true
  end
end
