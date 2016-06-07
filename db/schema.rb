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

ActiveRecord::Schema.define(version: 20160605180337) do

  create_table "groups", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.string   "code"
    t.string   "item_type"
    t.string   "state"
    t.string   "reference"
    t.string   "domain"
    t.string   "characteristics"
    t.string   "mac"
    t.string   "serie"
    t.integer  "quantity"
    t.float    "value"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "items_kits", id: false, force: :cascade do |t|
    t.integer "kit_id",  null: false
    t.integer "item_id", null: false
    t.index ["kit_id", "item_id"], name: "index_items_kits_on_kit_id_and_item_id"
  end

  create_table "items_owners", id: false, force: :cascade do |t|
    t.integer "owner_id", null: false
    t.integer "item_id",  null: false
    t.index ["owner_id", "item_id"], name: "index_items_owners_on_owner_id_and_item_id"
  end

  create_table "kit_comments", force: :cascade do |t|
    t.string   "comments"
    t.integer  "kit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kit_id"], name: "index_kit_comments_on_kit_id"
  end

  create_table "kits", force: :cascade do |t|
    t.string   "title"
    t.integer  "number_elements"
    t.string   "code"
    t.string   "kit_type"
    t.string   "state"
    t.string   "reference"
    t.string   "domain"
    t.string   "purpose"
    t.string   "comments"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "item_id"
    t.string   "serie"
    t.index ["item_id"], name: "index_kits_on_item_id"
  end

  create_table "kits_owners", id: false, force: :cascade do |t|
    t.integer "owner_id", null: false
    t.integer "kit_id",   null: false
    t.index ["owner_id", "kit_id"], name: "index_kits_owners_on_owner_id_and_kit_id"
  end

  create_table "loan_logs", force: :cascade do |t|
    t.string   "action"
    t.string   "comment"
    t.integer  "loan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["loan_id"], name: "index_loan_logs_on_loan_id"
  end

  create_table "loans", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.string   "reference"
    t.string   "version"
    t.string   "extension"
    t.string   "file"
    t.string   "purpose"
    t.string   "state"
    t.string   "domain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "title"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_histories", force: :cascade do |t|
    t.datetime "last_sign_in_at"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "user_models", force: :cascade do |t|
    t.string   "institutional_email"
    t.string   "function"
    t.integer  "sign_in_count"
    t.boolean  "remember_me_token"
    t.string   "current_sign_in_ip"
    t.datetime "current_sign_in_at"
    t.boolean  "reset_password_token"
    t.datetime "reset_password_at"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_user_models_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.string   "password_digest"
    t.string   "email"
    t.string   "function"
    t.string   "phone"
    t.string   "gender"
    t.string   "cellphone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
