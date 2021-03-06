# encoding: UTF-8
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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161128184624) do
=======
ActiveRecord::Schema.define(version: 20161128233630) do
>>>>>>> 4bc245354578773ed145fa4bfb114561bd7b1a3a

  create_table "groups", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "meet_up_id"
    t.integer  "user_id"
  end

  add_index "groups", ["meet_up_id"], name: "group_meet_up_id"
  add_index "groups", ["user_id"], name: "group_user_id"

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "value"
    t.string   "address"
    t.string   "menu"
    t.string   "picture"
  end

  create_table "meet_ups", force: :cascade do |t|
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "host"
    t.integer  "group_id"
    t.datetime "time"
    t.string   "comment"
  end

  add_index "meet_ups", ["group_id"], name: "meet_up_group_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "group_id"
    t.string   "phone_number"
    t.string   "description"
    t.string   "avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["group_id"], name: "user_group_id"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
