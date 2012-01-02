class AddUserAssociations < ActiveRecord::Migration
  def self.up
    add_column :watcheds, :user_id, :integer
    add_column :comments, :user_id, :integer
    add_column :shows, :user_id, :integer
  end

  def self.down
    remove_column :watcheds, :user_id
    remove_column :comments, :user_id
    remove_column :shows, :user_id
  end
end
