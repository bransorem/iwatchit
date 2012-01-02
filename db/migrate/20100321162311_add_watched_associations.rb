class AddWatchedAssociations < ActiveRecord::Migration
  def self.up
    add_column :episodes, :watched_id, :integer
    add_column :users, :watched_id, :integer
  end

  def self.down
    remove_column :episodes, :watched_id, :integer
    remove_column :users, :watched_id, :integer
  end
end
