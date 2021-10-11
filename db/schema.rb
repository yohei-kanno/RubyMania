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

ActiveRecord::Schema.define(version: 2021_10_11_050458) do

  create_table "authentications", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "provider", null: false
    t.string "uid", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["provider", "uid"], name: "index_authentications_on_provider_and_uid"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories_questions", force: :cascade do |t|
    t.integer "question_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_categories_questions_on_category_id"
    t.index ["question_id", "category_id"], name: "index_categories_questions_on_question_id_and_category_id", unique: true
    t.index ["question_id"], name: "index_categories_questions_on_question_id"
  end

  create_table "choices", force: :cascade do |t|
    t.integer "question_id", null: false
    t.text "content", null: false
    t.boolean "answer", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_choices_on_question_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name", null: false
    t.text "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "level_statuses", force: :cascade do |t|
    t.integer "level", default: 2, null: false
    t.integer "required_experience_points", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "title", null: false
    t.text "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "commentary", default: "まだ解説はありません"
  end

  create_table "study_records", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "category_id", null: false
    t.datetime "studied_at", null: false
    t.integer "score", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_study_records_on_category_id"
    t.index ["user_id"], name: "index_study_records_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.boolean "admin", default: false, null: false
    t.integer "level", default: 1, null: false
    t.integer "experience_point", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "remote_avatar_url"
    t.string "crypted_password"
    t.string "salt"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "categories_questions", "categories"
  add_foreign_key "categories_questions", "questions"
  add_foreign_key "choices", "questions"
  add_foreign_key "study_records", "categories"
  add_foreign_key "study_records", "users"
end
