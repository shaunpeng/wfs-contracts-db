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

ActiveRecord::Schema.define(version: 20170127192510) do

  create_table "cfiles", force: :cascade do |t|
    t.string   "name"
    t.string   "document"
    t.integer  "contract_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "abbr"
    t.string   "name"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "market_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "contract_nbr"
    t.string   "supplier"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "status"
    t.string   "sales_rep"
    t.string   "supplier_nbr"
    t.string   "company"
    t.string   "company_nbr"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "renew_type"
    t.text     "notes"
    t.string   "formula_type"
    t.string   "pricing_cycle"
    t.string   "brand_type"
    t.integer  "cfile_id"
    t.integer  "market_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lines", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "contract_id"
    t.integer  "volume"
    t.string   "formula"
    t.integer  "prod_category_id"
    t.integer  "product_id"
    t.integer  "terminal_id"
    t.integer  "city_id"
    t.date     "cancel_date"
    t.string   "status"
    t.string   "payment_terms"
    t.string   "volume_variance"
    t.string   "volume_grossnet"
    t.string   "formula_description"
    t.string   "formula_samepriorday"
    t.integer  "pct_ethanol"
    t.string   "index_1"
    t.decimal  "adder_1"
    t.integer  "pct_index_1"
    t.string   "index_2"
    t.decimal  "adder_2"
    t.integer  "pct_index_2"
    t.string   "index_3"
    t.decimal  "adder_3"
    t.integer  "pct_index_3"
    t.string   "adder_inout"
    t.string   "adder_schedule"
    t.integer  "pct_rins_discount"
    t.string   "index_rins"
    t.string   "summer_rvp"
    t.decimal  "rack_discount"
    t.text     "rack_discount_policy"
    t.text     "rebate_policy"
    t.text     "penalty_policy"
    t.boolean  "short_list"
  end

  create_table "markets", force: :cascade do |t|
    t.string   "name"
    t.integer  "padd"
    t.string   "market"
    t.integer  "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prod_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "abbr"
    t.integer  "prod_category_id"
    t.string   "short_list"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "city_id"
    t.string   "tcn"
  end

end
