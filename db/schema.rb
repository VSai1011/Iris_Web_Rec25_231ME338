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

ActiveRecord::Schema[8.0].define(version: 2025_03_31_181501) do
  create_table "equipment_bookings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "equipment"
    t.integer "quantity"
    t.string "time_slot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "pending"
    t.index ["user_id"], name: "index_equipment_bookings_on_user_id"
  end

  create_table "infrastructure_bookings", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "sport"
    t.string "location"
    t.string "time_slot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "pending"
    t.index ["user_id"], name: "index_infrastructure_bookings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "branch"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "equipment_bookings", "users"
  add_foreign_key "infrastructure_bookings", "users"
end
