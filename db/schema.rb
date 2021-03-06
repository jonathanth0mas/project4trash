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

ActiveRecord::Schema.define(version: 20150219002625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pickups", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "date"
    t.integer  "user_id"
    t.boolean  "completed",  default: false
  end

  add_index "pickups", ["user_id"], name: "index_pickups_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street"
    t.string   "unit_number"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone"
    t.integer  "debit_card_number"
    t.string   "password_digest"
    t.string   "email"
    t.boolean  "admin",             default: false
  end

end
