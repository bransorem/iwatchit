class AddCommentAssociations < ActiveRecord::Migration
  def self.up
    add_column :episodes, :comment_id, :integer
    add_column :users, :comment_id, :integer
  end

  def self.down
    remove_column :episodes, :comment_id
    remove_column :users, :comment_id
  end
end
