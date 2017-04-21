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

ActiveRecord::Schema.define(version: 20170330164539) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "firt_name"
    t.string   "last_name"
    t.string   "hashed_password"
    t.string   "email",           limit: 100
    t.boolean  "visible"
    t.integer  "position"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "username",        limit: 25
    t.index ["username"], name: "index_admin_users_on_username"
  end

  create_table "admin_users_pages", id: false, force: :cascade do |t|
    t.integer "admin_user_id"
    t.integer "page_id"
    t.index ["admin_user_id", "page_id"], name: "index_admin_users_pages_on_admin_user_id_and_page_id"
  end

  create_table "instructments", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instructmes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.integer  "story_id"
    t.string   "name"
    t.string   "link"
    t.integer  "permalink"
    t.boolean  "visible"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permalink"], name: "index_pages_on_permalink"
    t.index ["story_id"], name: "index_pages_on_story_id"
  end

  create_table "section_edits", force: :cascade do |t|
    t.integer  "admin_user_id"
    t.integer  "section_id"
    t.string   "summarize"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id", "section_id"], name: "index_section_edits_on_admin_user_id_and_section_id"
  end

  create_table "sections", force: :cascade do |t|
    t.integer  "page_id"
    t.string   "name"
    t.string   "link"
    t.integer  "permalink"
    t.boolean  "visible"
    t.integer  "position"
    t.string   "content_type"
    t.text     "content"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["page_id"], name: "index_sections_on_page_id"
    t.index ["permalink"], name: "index_sections_on_permalink"
  end

  create_table "stories", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.boolean  "visible"
    t.integer  "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
