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

ActiveRecord::Schema.define(version: 20160601130845) do

  create_table "cables", force: :cascade do |t|
    t.string   "name"
    t.integer  "location_a_id"
    t.integer  "location_b_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "dev_ports", force: :cascade do |t|
    t.string   "name"
    t.integer  "portno"
    t.string   "type"
    t.integer  "RackID"
    t.integer  "odfid"
    t.integer  "fiberid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fiber_strands", force: :cascade do |t|
    t.string   "name"
    t.integer  "port1id"
    t.integer  "port2id"
    t.integer  "cableid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "locations_id"
  end

  add_index "locations", ["locations_id"], name: "index_locations_on_locations_id"

  create_table "net_racks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "locations_id"
  end

  add_index "net_racks", ["locations_id"], name: "index_net_racks_on_locations_id"

  create_table "term_devs", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.integer  "RackID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
