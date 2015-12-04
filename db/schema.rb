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

ActiveRecord::Schema.define(version: 20151202053150) do

  create_table "api_keys", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "access_token"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "api_keys", ["access_token"], name: "index_api_keys_on_access_token"
  add_index "api_keys", ["user_id"], name: "index_api_keys_on_user_id"

  create_table "papers", force: :cascade do |t|
    t.string   "paperName"
    t.string   "paperMeta"
    t.decimal  "aditionalPrice", precision: 8, scale: 2
    t.integer  "poster_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "papers", ["poster_id"], name: "index_papers_on_poster_id"

  create_table "posters", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.integer  "units_in_stock"
    t.string   "credits"
    t.string   "shippingDetails"
    t.string   "productUrl"
    t.decimal  "price",           precision: 10, scale: 2
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string   "sizeName"
    t.string   "heightInInch"
    t.string   "widthInInch"
    t.string   "heightInCM"
    t.string   "widthInCM"
    t.string   "heightInFeet"
    t.string   "widthInFeet"
    t.string   "meta"
    t.integer  "poster_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "sizes", ["poster_id"], name: "index_sizes_on_poster_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
