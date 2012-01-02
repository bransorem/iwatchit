# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100321162505) do

  create_table "comments", :force => true do |t|
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "episode_id"
  end

  create_table "episodes", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.text     "description"
    t.integer  "number"
    t.date     "air_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "comment_id"
    t.integer  "watched_id"
    t.integer  "season_id"
  end

  create_table "seasons", :force => true do |t|
    t.string   "link"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "episode_id"
    t.integer  "show_id"
  end

  create_table "shows", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "season_id"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "name"
    t.string   "password"
    t.string   "email"
    t.boolean  "administrator"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "show_id"
    t.integer  "comment_id"
    t.integer  "watched_id"
  end

  create_table "watcheds", :force => true do |t|
    t.integer  "rank"
    t.boolean  "watched"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "episode_id"
  end

end
