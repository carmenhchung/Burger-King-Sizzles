<<<<<<< HEAD:db/migrate/20170929034908_acts_as_votable_migration.rb
class ActsAsVotableMigration < ActiveRecord::Migration[5.1]
=======
class ActsAsVotableMigration < ActiveRecord::Migration[5.0]
>>>>>>> 37efbf70ace9a0126bee03d270d8318d3a898ec0:db/migrate/20170929035332_acts_as_votable_migration.rb
  def self.up
    create_table :votes do |t|

      t.references :votable, :polymorphic => true
      t.references :voter, :polymorphic => true

      t.boolean :vote_flag
      t.string :vote_scope
      t.integer :vote_weight

      t.timestamps
    end

    if ActiveRecord::VERSION::MAJOR < 4
      add_index :votes, [:votable_id, :votable_type]
      add_index :votes, [:voter_id, :voter_type]
    end

    add_index :votes, [:voter_id, :voter_type, :vote_scope]
    add_index :votes, [:votable_id, :votable_type, :vote_scope]
  end

  def self.down
    drop_table :votes
  end
end
