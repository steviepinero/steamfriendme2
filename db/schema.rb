# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160313183339) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string   "game_name"
    t.string   "appid"
    t.string   "playtime"
    t.string   "img_icon_url"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "games", ["user_id"], name: "index_games_on_user_id", using: :btree

  create_table "user_ratings", force: :cascade do |t|
    t.integer  "rating",         default: 0
    t.integer  "rating_user_id"
    t.integer  "user_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "user_ratings", ["user_id"], name: "index_user_ratings_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "name"
    t.string "user_profile"
    t.string "user_image"
    t.string "user_location"
    t.string "uid"
    t.string "provider"
  end

  add_foreign_key "games", "users"
  add_foreign_key "user_ratings", "users"
end
