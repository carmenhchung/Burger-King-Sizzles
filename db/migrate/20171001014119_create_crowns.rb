class CreateCrowns < ActiveRecord::Migration[5.1]
  def change
    create_table :crowns do |t|
      t.integer :tweet_id
      t.integer :user_id

      t.timestamps
    end
  end
end
