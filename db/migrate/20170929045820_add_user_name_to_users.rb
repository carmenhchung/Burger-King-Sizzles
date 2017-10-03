class AddUserNameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_name, :string
    add_index :users, :username, unique: true
  end
end
