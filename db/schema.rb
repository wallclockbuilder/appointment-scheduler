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

ActiveRecord::Schema.define(version: 20181018200613) do

# Could not dump table "availabilities" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "coaches", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.time     "from"
    t.time     "to"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "day_of_week"
    t.integer  "availability_id"
    t.boolean  "booked"
  end

end
