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

ActiveRecord::Schema.define(version: 20150625010549) do

  create_table "events", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.datetime "event_date"
    t.string   "venue"
    t.string   "venue_street"
    t.string   "venue_city"
    t.string   "venue_state"
    t.string   "venue_zip"
    t.string   "venue_country"
    t.text     "venue_description"
    t.string   "dress_code"
    t.integer  "wedding_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["wedding_id"], name: "index_events_on_wedding_id"

  create_table "weddings", force: true do |t|
    t.string   "betrothed_one"
    t.string   "betrothed_two"
    t.date     "date"
    t.text     "story"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
