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

  create_table "investors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "fund_name"
    t.date     "last_update"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "operations", force: :cascade do |t|
    t.integer  "number_of_shares"
    t.integer  "stock_price"
    t.boolean  "sold"
    t.integer  "portfolio_tracker_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["portfolio_tracker_id"], name: "index_operations_on_portfolio_tracker_id", using: :btree
  end

  create_table "portfolio_trackers", force: :cascade do |t|
    t.string   "ticker"
    t.string   "company_name"
    t.integer  "d_current_price"
    t.integer  "d_change"
    t.integer  "p_change"
    t.integer  "shares_held"
    t.integer  "market_value"
    t.integer  "p_weight"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_portfolio_trackers_on_user_id", using: :btree
  end

  create_table "stock_histories", force: :cascade do |t|
    t.string   "quarter"
    t.integer  "shares_bought_sold"
    t.integer  "p_change"
    t.integer  "quarter_end_shares"
    t.integer  "avg_price"
    t.integer  "market_cap"
    t.integer  "shares"
    t.integer  "value"
    t.integer  "p_weight"
    t.integer  "p_share_change_from_last_Q"
    t.integer  "p_trade_impact"
    t.integer  "p_shares_outstanding"
    t.integer  "three_m_p_change"
    t.integer  "ytd_p_change"
    t.integer  "stock_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["stock_id"], name: "index_stock_histories_on_stock_id", using: :btree
  end

  create_table "stocks", force: :cascade do |t|
    t.integer  "investor_id"
    t.string   "ticker"
    t.string   "company_name"
    t.string   "sector"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["investor_id"], name: "index_stocks_on_investor_id", using: :btree
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
    t.string   "password"
    t.string   "payment_info"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "operations", "portfolio_trackers"
  add_foreign_key "portfolio_trackers", "users"
  add_foreign_key "stock_histories", "stocks"
  add_foreign_key "stocks", "investors"
end
