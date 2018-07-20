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

ActiveRecord::Schema.define(version: 2018_07_20_064950) do

  create_table "assets", force: :cascade do |t|
    t.date "issue_date"
    t.string "catagory"
    t.string "sr_no"
    t.string "brand"
    t.string "version"
    t.string "os"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_assets_on_user_id"
  end

  create_table "leave_configurations", force: :cascade do |t|
    t.decimal "sick_leaves"
    t.decimal "privilege_leaves"
    t.decimal "casual_leaves"
    t.decimal "work_from_home"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leave_summaries", force: :cascade do |t|
    t.decimal "privilege_leave"
    t.decimal "sick_leave"
    t.decimal "casual_leave"
    t.decimal "work_from_home"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_leave_summaries_on_user_id"
  end

  create_table "leaves", force: :cascade do |t|
    t.date "from"
    t.date "to"
    t.string "session"
    t.text "reason"
    t.string "catagory"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_leaves_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "employee_code"
    t.string "first_name"
    t.string "last_name"
    t.date "dob"
    t.string "mobile_number"
    t.string "city"
    t.text "address"
    t.date "join_date"
    t.string "designation"
    t.string "gender"
    t.string "maratial_status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "manager_id"
    t.integer "role_id"
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["manager_id"], name: "index_users_on_manager_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
