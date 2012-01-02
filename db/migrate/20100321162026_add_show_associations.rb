class AddShowAssociations < ActiveRecord::Migration
  def self.up
    add_column :users, :show_id, :integer
    add_column :seasons, :show_id, :integer
  end

  def self.down
    remove_column :users, :show_id
    remove_column :seasons, :show_id
  end
end
