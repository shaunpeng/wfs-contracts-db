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

ActiveRecord::Schema.define(version: 20170119205226) do

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

end
