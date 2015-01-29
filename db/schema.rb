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

ActiveRecord::Schema.define(version: 20150129201358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
    t.boolean  "gmaps"
    t.float    "hstart"
    t.float    "hend"
    t.string   "hmenu"
    t.float    "hrating",    default: 0.0
    t.string   "number"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "days"
    t.boolean  "sunday",     default: false
    t.boolean  "monday",     default: false
    t.boolean  "tuesday",    default: false
    t.boolean  "wednesday",  default: false
    t.boolean  "thursday",   default: false
    t.boolean  "friday",     default: false
    t.boolean  "saturday",   default: false
    t.integer  "hcounter",   default: 0
  end

end
