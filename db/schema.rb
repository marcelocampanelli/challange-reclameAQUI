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

ActiveRecord::Schema.define(version: 2021_05_01_201108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "complaints", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "company_id", null: false
    t.bigint "locale_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_complaints_on_company_id"
    t.index ["locale_id"], name: "index_complaints_on_locale_id"
  end

  create_table "locales", force: :cascade do |t|
    t.string "coordinates"
    t.string "address"
    t.string "state"
    t.string "city"
    t.string "country"
    t.string "postcode"
    t.bigint "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_locales_on_company_id"
  end

  add_foreign_key "complaints", "companies"
  add_foreign_key "complaints", "locales"
  add_foreign_key "locales", "companies"
end
