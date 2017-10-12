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

ActiveRecord::Schema.define(version: 20171012174223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cargos", force: :cascade do |t|
    t.string "goods"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "quantity"
    t.string "weight"
    t.string "size"
    t.string "shipping"
    t.string "funding"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_cargos_on_user_id"
  end

  create_table "transports", force: :cascade do |t|
    t.string "role"
    t.string "range"
    t.string "capacity"
    t.string "name"
    t.string "avaliability"
    t.string "funding"
    t.string "hub"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_transports_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "role"
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "location"
    t.string "funding"
    t.string "capacity"
    t.string "avaliability"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_warehouses_on_user_id"
  end

  create_table "workflows", force: :cascade do |t|
    t.string "one"
    t.string "two"
    t.string "three"
    t.string "four"
    t.string "five"
    t.string "six"
    t.string "seven"
    t.string "eight"
    t.string "nine"
    t.string "ten"
    t.string "elen"
    t.string "twelve"
    t.string "thirteeen"
    t.string "fourteen"
    t.string "fifteen"
    t.bigint "cargos_id"
    t.bigint "transports_id"
    t.bigint "warehouses_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cargos_id"], name: "index_workflows_on_cargos_id"
    t.index ["transports_id"], name: "index_workflows_on_transports_id"
    t.index ["warehouses_id"], name: "index_workflows_on_warehouses_id"
  end

  add_foreign_key "cargos", "users"
  add_foreign_key "transports", "users"
  add_foreign_key "warehouses", "users"
  add_foreign_key "workflows", "cargos", column: "cargos_id"
  add_foreign_key "workflows", "transports", column: "transports_id"
  add_foreign_key "workflows", "warehouses", column: "warehouses_id"
end
