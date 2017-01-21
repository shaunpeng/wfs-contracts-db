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

ActiveRecord::Schema.define(version: 20170121155035) do

  create_table "cfiles", force: :cascade do |t|
    t.string   "name"
    t.string   "document"
    t.integer  "contract_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["contract_id"], name: "index_cfiles_on_contract_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "abbr"
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "contract_nbr"
    t.string   "supplier"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "status"
    t.string   "sales_rep"
    t.string   "supplier_nbr"
    t.string   "company"
    t.string   "company_nbr"
    t.string   "terminal_city"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "renew_type"
    t.text     "notes"
    t.string   "formula_type"
    t.string   "pricing_cycle"
    t.string   "brand_type"
    t.string   "terminal_state"
    t.integer  "cfile_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lines", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "contract_id"
    t.integer  "volume"
    t.string   "formula"
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "abbr"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "terminals", force: :cascade do |t|
    t.string   "name"
    t.string   "abbr"
    t.integer  "rack_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "city_id"
    t.string   "tcn"
  end

end
