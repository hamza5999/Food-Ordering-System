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

ActiveRecord::Schema.define(version: 2022_09_07_125831) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "addon_menu_items", id: false, force: :cascade do |t|
    t.bigint "menu_item_id", null: false
    t.bigint "addon_id", null: false
  end

  create_table "addon_order_items", id: false, force: :cascade do |t|
    t.bigint "order_item_id", null: false
    t.bigint "addon_id", null: false
  end

  create_table "addons", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_addons_on_restaurant_id"
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

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "customer_vouchers", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "voucher_id", null: false
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

  create_table "deal_item_deals", id: false, force: :cascade do |t|
    t.bigint "deal_id", null: false
    t.bigint "deal_item_id", null: false
  end

  create_table "deal_items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "option_id", null: false
    t.string "dealable_type"
    t.integer "dealable_id"
    t.index ["option_id"], name: "index_deal_items_on_option_id"
  end

  create_table "deals", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.decimal "price"
  end

  create_table "discount_timelines", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "discount_id", null: false
    t.index ["discount_id"], name: "index_discount_timelines_on_discount_id"
  end

  create_table "discounts", force: :cascade do |t|
    t.string "name"
    t.decimal "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.integer "status", default: 0
    t.integer "kind", default: 0
    t.index ["restaurant_id"], name: "index_discounts_on_restaurant_id"
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
    t.integer "designation", default: 0
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["manager_id"], name: "index_employees_on_manager_id"
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
    t.index ["restaurant_id"], name: "index_employees_on_restaurant_id"
  end

  create_table "food_item_options", id: false, force: :cascade do |t|
    t.bigint "food_item_id", null: false
    t.bigint "option_id", null: false
    t.decimal "price"
  end

  create_table "food_items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "discount_id", null: false
    t.bigint "item_group_id", null: false
    t.index ["discount_id"], name: "index_food_items_on_discount_id"
    t.index ["item_group_id"], name: "index_food_items_on_item_group_id"
  end

  create_table "item_groups", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "menu_item_menus", id: false, force: :cascade do |t|
    t.bigint "menu_id", null: false
    t.bigint "menu_item_id", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.string "name"
    t.string "menuable_type"
    t.integer "menuable_id"
    t.index ["restaurant_id"], name: "index_menu_items_on_restaurant_id"
  end

  create_table "menu_timings", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "menu_id", null: false
    t.integer "days", default: 0
    t.index ["menu_id"], name: "index_menu_timings_on_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "title"
    t.boolean "availability"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.index ["restaurant_id"], name: "index_menus_on_restaurant_id"
  end

  create_table "option_order_items", id: false, force: :cascade do |t|
    t.bigint "order_item_id", null: false
    t.bigint "option_id", null: false
  end

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "restaurant_id", null: false
    t.bigint "item_group_id", null: false
    t.index ["item_group_id"], name: "index_options_on_item_group_id"
    t.index ["restaurant_id"], name: "index_options_on_restaurant_id"
  end

  create_table "order_item_deals", force: :cascade do |t|
    t.integer "deal_id"
    t.integer "item_group_id"
    t.integer "food_item_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_item_id", null: false
    t.index ["order_item_id"], name: "index_order_item_deals_on_order_item_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "order_id", null: false
    t.string "orderable_type"
    t.integer "orderable_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
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
    t.integer "status", default: 0
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
    t.integer "method", default: 0
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
    t.bigint "restaurant_id", null: false
    t.integer "days", default: 0
    t.index ["restaurant_id"], name: "index_restaurant_timings_on_restaurant_id"
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
    t.bigint "voucher_id", null: false
    t.index ["voucher_id"], name: "index_voucher_timelines_on_voucher_id"
  end

  create_table "vouchers", force: :cascade do |t|
    t.string "name"
    t.integer "promo_code"
    t.decimal "promo_percentage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addons", "restaurants"
  add_foreign_key "addresses", "customers"
  add_foreign_key "admin_charges", "orders"
  add_foreign_key "deal_items", "options"
  add_foreign_key "discount_timelines", "discounts"
  add_foreign_key "discounts", "restaurants"
  add_foreign_key "employees", "employees", column: "manager_id"
  add_foreign_key "employees", "restaurants"
  add_foreign_key "food_items", "discounts"
  add_foreign_key "food_items", "item_groups"
  add_foreign_key "menu_items", "restaurants"
  add_foreign_key "menu_timings", "menus"
  add_foreign_key "menus", "restaurants"
  add_foreign_key "options", "item_groups"
  add_foreign_key "options", "restaurants"
  add_foreign_key "order_item_deals", "order_items"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "employees"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "orders", "vouchers"
  add_foreign_key "payments", "orders"
  add_foreign_key "ratings", "customers"
  add_foreign_key "ratings", "orders"
  add_foreign_key "restaurant_dues", "orders"
  add_foreign_key "restaurant_timings", "restaurants"
  add_foreign_key "voucher_timelines", "vouchers"
end
