# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_28_220024) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "delivery_address"
    t.string "pickup_address"
    t.date "order_date"
    t.time "order_time"
    t.date "delivery_date"
    t.time "delivery_time"
    t.decimal "fee", precision: 15, scale: 10
    t.string "status"
    t.bigint "user_id"
    t.bigint "payment_info_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["payment_info_id"], name: "index_orders_on_payment_info_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "payment_infos", force: :cascade do |t|
    t.integer "card_grid1"
    t.integer "card_grid2"
    t.integer "card_grid3"
    t.integer "card_grid4"
    t.string "first_name"
    t.string "last_name"
    t.date "expiration_date"
    t.integer "cvv"
    t.string "card_type"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_payment_infos_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address_one"
    t.string "address_two"
    t.string "city"
    t.string "state"
    t.string "zipcode"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
