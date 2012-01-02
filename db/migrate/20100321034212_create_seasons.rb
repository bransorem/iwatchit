class CreateSeasons < ActiveRecord::Migration
  def self.up
    create_table :seasons do |t|
      t.string :link, :title
      t.integer :number

      t.timestamps
    end
  end

  def self.down
    drop_table :seasons
  end
end
