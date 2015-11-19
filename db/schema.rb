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

ActiveRecord::Schema.define(version: 20151108143245) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.boolean  "starred",      default: false
    t.integer  "news_item_id"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "comments", ["news_item_id"], name: "index_comments_on_news_item_id", using: :btree

  create_table "news_items", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "image"
    t.string   "url"
    t.integer  "source_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "region_id"
  end

  add_index "news_items", ["source_id"], name: "index_news_items_on_source_id", using: :btree

  create_table "news_items_tags", force: :cascade do |t|
    t.integer "news_item_id"
    t.integer "tag_id"
  end

  add_index "news_items_tags", ["news_item_id"], name: "index_news_items_tags_on_news_item_id", using: :btree
  add_index "news_items_tags", ["tag_id"], name: "index_news_items_tags_on_tag_id", using: :btree

  create_table "regions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sources", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sources_users", id: false, force: :cascade do |t|
    t.integer "source_id"
    t.integer "user_id"
  end

  add_index "sources_users", ["source_id"], name: "index_sources_users_on_source_id", using: :btree
  add_index "sources_users", ["user_id"], name: "index_sources_users_on_user_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "tag_name"
    t.integer  "user_id"
    t.integer  "news_item_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "tags", ["news_item_id"], name: "index_tags_on_news_item_id", using: :btree
  add_index "tags", ["user_id"], name: "index_tags_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "source_id"
    t.integer  "region_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "gender"
    t.string   "rut"
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["provider"], name: "index_users_on_provider", using: :btree
  add_index "users", ["region_id"], name: "index_users_on_region_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["source_id"], name: "index_users_on_source_id", using: :btree
  add_index "users", ["uid"], name: "index_users_on_uid", using: :btree

end
