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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120901021817) do

  create_table "acts", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "albums", :force => true do |t|
    t.string   "title"
    t.datetime "date"
    t.string   "cover_art"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "category"
    t.integer  "user_id"
  end

  create_table "comments", :force => true do |t|
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "films", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "footage"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "gigs", :force => true do |t|
    t.datetime "date"
    t.string   "poster"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "cover"
    t.integer  "venue_id"
  end

  create_table "pictures", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "category"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sets", :force => true do |t|
    t.integer  "gig_id"
    t.integer  "act_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "songs", :force => true do |t|
    t.string   "title"
    t.text     "lyric"
    t.string   "chart"
    t.string   "tablature"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "recording"
    t.string   "category"
    t.integer  "album_id"
    t.integer  "user_id"
  end

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "category"
    t.string   "password_confirmation"
    t.string   "password_digest"
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
