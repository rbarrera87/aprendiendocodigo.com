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

ActiveRecord::Schema.define(version: 20150205031404) do

  create_table "answers", force: true do |t|
    t.string   "answer",                      null: false
    t.boolean  "is_correct",  default: false
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "challengues", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "answer_code"
    t.integer  "level_id"
  end

  add_index "challengues", ["level_id"], name: "index_challengues_on_level_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.string   "image_url",   null: false
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["category_id"], name: "index_courses_on_category_id", using: :btree

  create_table "dashboards", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level_id"
    t.integer  "levels_completed"
  end

  add_index "dashboards", ["course_id"], name: "index_dashboards_on_course_id", using: :btree
  add_index "dashboards", ["level_id"], name: "index_dashboards_on_level_id", using: :btree
  add_index "dashboards", ["user_id"], name: "index_dashboards_on_user_id", using: :btree

  create_table "levels", force: true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "levels", ["course_id"], name: "index_levels_on_course_id", using: :btree

  create_table "questions", force: true do |t|
    t.string   "question",   null: false
    t.integer  "quiz_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["quiz_id"], name: "index_questions_on_quiz_id", using: :btree

  create_table "quizzes", force: true do |t|
    t.string   "name",       null: false
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quizzes", ["level_id"], name: "index_quizzes_on_level_id", using: :btree

  create_table "registers", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "cell_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "videos", force: true do |t|
    t.string   "name",        null: false
    t.string   "description"
    t.string   "slug",        null: false
    t.string   "url",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "level_id"
  end

  add_index "videos", ["level_id"], name: "index_videos_on_level_id", using: :btree

end
