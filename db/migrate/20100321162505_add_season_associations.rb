class AddSeasonAssociations < ActiveRecord::Migration
  def self.up
    add_column :shows, :season_id, :integer
    add_column :episodes, :season_id, :integer
  end

  def self.down
    remove_column :shows, :season_id
    remove_column :episodes, :season_id
  end
end
