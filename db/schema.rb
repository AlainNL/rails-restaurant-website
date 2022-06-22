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

ActiveRecord::Schema[7.0].define(version: 2022_06_22_144858) do
  create_table "bookings", force: :cascade do |t|
    t.integer "nb_guest"
    t.boolean "confirmation"
    t.integer "menu_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_bookings_on_menu_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "item_id"
    t.integer "menu_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_items_on_menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string "title"
    t.decimal "price"
    t.text "description"
    t.integer "booking_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_menus_on_booking_id"
  end

  add_foreign_key "bookings", "menus"
  add_foreign_key "bookings", "users"
  add_foreign_key "items", "menus"
  add_foreign_key "menus", "bookings"
end
