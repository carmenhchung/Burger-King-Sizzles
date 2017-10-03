class AddRetweetToTweets < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :retweet, :string
  end
end
