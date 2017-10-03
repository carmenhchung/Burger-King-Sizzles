class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.string :reply_message
      t.integer :user_id
      t.integer :tweet_id

      t.timestamps
    end
  end
end
