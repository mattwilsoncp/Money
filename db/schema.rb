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

ActiveRecord::Schema.define(version: 20170709194354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "register_entries", force: :cascade do |t|
    t.bigint "register_id"
    t.date "entry_date"
    t.string "confirmation_number"
    t.string "description"
    t.bigint "category_id"
    t.float "deposit"
    t.float "withdrawal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_register_entries_on_category_id"
    t.index ["register_id"], name: "index_register_entries_on_register_id"
  end

  create_table "register_upload_entries", force: :cascade do |t|
    t.integer "register_upload_id"
    t.date "entry_date"
    t.string "description"
    t.integer "category_id"
    t.float "withdrawal"
    t.float "deposit"
    t.integer "register_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "register_uploads", force: :cascade do |t|
    t.bigint "register_id"
    t.string "filename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "external_file"
    t.index ["register_id"], name: "index_register_uploads_on_register_id"
  end

  create_table "registers", force: :cascade do |t|
    t.string "name"
    t.string "register_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "register_entries", "categories"
  add_foreign_key "register_entries", "registers"
  add_foreign_key "register_uploads", "registers"
end