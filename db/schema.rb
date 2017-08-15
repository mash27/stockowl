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

ActiveRecord::Schema.define(version: 20170814161803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "investor_stocks", force: :cascade do |t|
    t.integer  "investor_id"
    t.integer  "stock_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["investor_id"], name: "index_investor_stocks_on_investor_id", using: :btree
    t.index ["stock_id"], name: "index_investor_stocks_on_stock_id", using: :btree
  end

  create_table "investors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "fund_name"
    t.date     "last_update"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "operations", force: :cascade do |t|
    t.boolean  "sold"
    t.integer  "stock_purchase_price"
    t.integer  "number_of_shares"
    t.integer  "user_stock_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["user_stock_id"], name: "index_operations_on_user_stock_id", using: :btree
  end

  create_table "stock_histories", force: :cascade do |t|
    t.string   "quarter"
    t.integer  "investor_stock_id"
    t.integer  "shares_bought_sold"
    t.integer  "percentage_change"
    t.integer  "quarter_end_shares"
    t.integer  "avg_price"
    t.integer  "market_cap"
    t.integer  "shares"
    t.integer  "value"
    t.integer  "percentage_weight"
    t.integer  "percentage_share_change_from_last_q"
    t.integer  "percentage_trade_impact"
    t.integer  "percentage_shares_outstanding"
    t.integer  "three_month_percentage_change"
    t.integer  "ytd_percentage_change"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["investor_stock_id"], name: "index_stock_histories_on_investor_stock_id", using: :btree
  end

  create_table "stocks", force: :cascade do |t|
    t.string   "ticker"
    t.string   "company_name"
    t.string   "sector"
    t.integer  "current_price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "user_stocks", force: :cascade do |t|
    t.integer  "stock_id"
    t.integer  "user_id"
    t.integer  "change"
    t.integer  "percentage_change"
    t.integer  "shares_held"
    t.integer  "market_value"
    t.integer  "percentage_weight"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["stock_id"], name: "index_user_stocks_on_stock_id", using: :btree
    t.index ["user_id"], name: "index_user_stocks_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "investor_stocks", "investors"
  add_foreign_key "investor_stocks", "stocks"
  add_foreign_key "operations", "user_stocks"
  add_foreign_key "stock_histories", "investor_stocks"
  add_foreign_key "user_stocks", "stocks"
  add_foreign_key "user_stocks", "users"
end
