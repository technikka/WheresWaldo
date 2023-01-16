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

ActiveRecord::Schema[7.0].define(version: 2023_01_15_233906) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exhibits", force: :cascade do |t|
    t.string "title"
    t.string "image_path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "high_score"
  end

  create_table "locations", force: :cascade do |t|
    t.string "div"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "exhibit_id", null: false
    t.bigint "size_id", null: false
    t.bigint "character_id", null: false
    t.index ["character_id"], name: "index_locations_on_character_id"
    t.index ["exhibit_id"], name: "index_locations_on_exhibit_id"
    t.index ["size_id"], name: "index_locations_on_size_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.string "dimensions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "locations", "characters"
  add_foreign_key "locations", "exhibits"
  add_foreign_key "locations", "sizes"
end
