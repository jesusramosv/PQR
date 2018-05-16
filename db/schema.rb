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

ActiveRecord::Schema.define(version: 2018_05_16_011846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "pqr_id"
    t.bigint "user_id"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pqr_id"], name: "index_answers_on_pqr_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "audits", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "pqr_id"
    t.string "name_1"
    t.string "name_2"
    t.string "last_name_1"
    t.string "last_name_2"
    t.text "description"
    t.string "action"
    t.text "backup"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pqr_id"], name: "index_audits_on_pqr_id"
    t.index ["user_id"], name: "index_audits_on_user_id"
  end

  create_table "departaments", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "docs", force: :cascade do |t|
    t.bigint "pqr_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pqr_id"], name: "index_docs_on_pqr_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "message"
    t.bigint "pqr_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pqr_id"], name: "index_notifications_on_pqr_id"
    t.index ["user_id"], name: "index_notifications_on_user_id"
  end

  create_table "pqrs", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name_1"
    t.string "name_2"
    t.string "last_name_1"
    t.string "last_name_2"
    t.string "email"
    t.string "number"
    t.date "date"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_pqrs_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "pqr_id"
    t.bigint "user_id"
    t.text "comment"
    t.date "date"
    t.string "finished"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pqr_id"], name: "index_reviews_on_pqr_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.bigint "pqr_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pqr_id"], name: "index_states_on_pqr_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.string "name_1"
    t.string "name_2"
    t.string "last_name_1"
    t.string "last_name_2"
    t.string "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "departament_id"
    t.index ["departament_id"], name: "index_users_on_departament_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "answers", "pqrs"
  add_foreign_key "answers", "users"
  add_foreign_key "audits", "pqrs"
  add_foreign_key "audits", "users"
  add_foreign_key "docs", "pqrs"
  add_foreign_key "notifications", "pqrs"
  add_foreign_key "notifications", "users"
  add_foreign_key "pqrs", "users"
  add_foreign_key "reviews", "pqrs"
  add_foreign_key "reviews", "users"
  add_foreign_key "states", "pqrs"
  add_foreign_key "users", "departaments"
end
