class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :message
      t.timestamps
      t.references :user, foreign_key: true
    end
    add_index :microposts, [:user_id, :created_at]
  end
end
