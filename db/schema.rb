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

ActiveRecord::Schema.define(version: 20160827012524) do

  create_table "candidates", force: :cascade do |t|
    t.string   "name"
    t.string   "party"
    t.string   "city"
    t.string   "office"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "entity_type"
    t.string "donated_amount"
    t.string "paid_amount"
    t.string "donation_type"
  end

  create_table "monies", force: :cascade do |t|
    t.string   "date"
    t.string   "type"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "contributor_type"
    t.string   "occupation"
    t.string   "item_type"
    t.string   "amount"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "candidate"
    t.string   "name"
  end

end
