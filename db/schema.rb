# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_30_082253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addons", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
  end

  create_table "admin_charges", force: :cascade do |t|
    t.decimal "admin_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id", null: false
    t.index ["order_id"], name: "index_admin_charges_on_order_id"
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "deals", force: :cascade do |t|
    t.string "deal_name"
    t.decimal "deal_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discount_timelines", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.string "name"
    t.decimal "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "manager_id"
    t.bigint "restaurant_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["manager_id"], name: "index_employees_on_manager_id"
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
    t.index ["restaurant_id"], name: "index_employees_on_restaurant_id"
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "item_groups", force: :cascade do |t|
    t.string "group_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menu_timings", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "title"
    t.boolean "availability"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_item_deals", force: :cascade do |t|
    t.integer "deal_id"
    t.integer "item_group_id"
    t.integer "food_item_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_time"
    t.string "delivery_address"
    t.decimal "total_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.bigint "voucher_id", null: false
    t.bigint "customer_id", null: false
    t.bigint "employee_id", null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["employee_id"], name: "index_orders_on_employee_id"
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
    t.index ["voucher_id"], name: "index_orders_on_voucher_id"
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "total_amount"
    t.datetime "payment_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id", null: false
    t.index ["order_id"], name: "index_payments_on_order_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.string "description"
    t.integer "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customer_id", null: false
    t.bigint "order_id", null: false
    t.index ["customer_id"], name: "index_ratings_on_customer_id"
    t.index ["order_id"], name: "index_ratings_on_order_id"
  end

  create_table "restaurant_dues", force: :cascade do |t|
    t.decimal "restaurant_dues"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id", null: false
    t.index ["order_id"], name: "index_restaurant_dues_on_order_id"
  end

  create_table "restaurant_timings", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "timings"
    t.boolean "availability"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_charges", force: :cascade do |t|
    t.integer "cuttoff"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "voucher_timelines", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vouchers", force: :cascade do |t|
    t.string "name"
    t.integer "promo_code"
    t.decimal "promo_percentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "admin_charges", "orders"
  add_foreign_key "employees", "employees", column: "manager_id"
  add_foreign_key "employees", "restaurants"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "employees"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "orders", "vouchers"
  add_foreign_key "payments", "orders"
  add_foreign_key "ratings", "customers"
  add_foreign_key "ratings", "orders"
  add_foreign_key "restaurant_dues", "orders"
end
