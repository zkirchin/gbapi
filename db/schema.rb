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

ActiveRecord::Schema.define(version: 20170214025643) do

  create_table "aliases", force: :cascade do |t|
    t.string   "name"
    t.integer  "divinity_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["divinity_id"], name: "index_aliases_on_divinity_id"
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.date     "release_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "divinities", force: :cascade do |t|
    t.string   "name"
    t.string   "ideology"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
