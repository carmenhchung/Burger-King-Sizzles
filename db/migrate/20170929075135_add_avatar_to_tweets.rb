class AddAvatarToTweets < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :avatar, :string
  end
end
