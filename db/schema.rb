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

ActiveRecord::Schema.define(version: 2019_03_12_111541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokes", force: :cascade do |t|
    t.text "content"
    t.boolean "accepted"
    t.integer "sender_id"
    t.integer "receiver_id"
  end
    
  create_table "suggestions", force: :cascade do |t|
    t.text "content"
    t.string "for"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_profile_questions", force: :cascade do |t|
    t.bigint "suggestion_id"
    t.bigint "user_id"
    t.text "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["suggestion_id"], name: "index_user_profile_questions_on_suggestion_id"
    t.index ["user_id"], name: "index_user_profile_questions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.text "description"
    t.date "date_of_birth"
    t.string "gender"
    t.string "search_gender"
    t.string "interest_gender"
    t.float "longitude"
    t.float "latitude"
    t.date "location_updated_at"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "user_profile_questions", "suggestions"
  add_foreign_key "user_profile_questions", "users"
end
