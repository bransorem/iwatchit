class CreateWatcheds < ActiveRecord::Migration
  def self.up
    create_table :watcheds do |t|
      t.integer :rank
      t.boolean :watched

      t.timestamps
    end
  end

  def self.down
    drop_table :watcheds
  end
end
