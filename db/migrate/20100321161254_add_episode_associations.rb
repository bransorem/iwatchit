class AddEpisodeAssociations < ActiveRecord::Migration
  def self.up
    add_column :comments, :episode_id, :integer
    add_column :watcheds, :episode_id, :integer
    add_column :seasons, :episode_id, :integer
  end

  def self.down
    remove_column :comments, :episode_id, :integer
    remove_column :watcheds, :episode_id, :integer
    remove_column :seasons, :episode_id, :integer
  end
end
