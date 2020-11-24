# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_22_032859) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comedian_fans", force: :cascade do |t|
    t.bigint "fan_id", null: false
    t.bigint "comedian_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comedian_id"], name: "index_comedian_fans_on_comedian_id"
    t.index ["fan_id"], name: "index_comedian_fans_on_fan_id"
  end

  create_table "comedian_genres", force: :cascade do |t|
    t.bigint "comedian_id"
    t.bigint "genre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comedian_id"], name: "index_comedian_genres_on_comedian_id"
    t.index ["genre_id"], name: "index_comedian_genres_on_genre_id"
  end

  create_table "comedians", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "city"
    t.string "personal_website"
    t.string "headshot"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.bigint "comedian_id"
    t.string "date_time"
    t.boolean "is_irl"
    t.boolean "is_virtual"
    t.string "venue"
    t.string "address"
    t.string "phone_number"
    t.string "ticket_link"
    t.string "venue_website"
    t.integer "ticket_price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comedian_id"], name: "index_events_on_comedian_id"
  end

  create_table "fans", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "lineups", force: :cascade do |t|
    t.datetime "date"
    t.bigint "comedian_id", null: false
    t.bigint "show_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comedian_id"], name: "index_lineups_on_comedian_id"
    t.index ["show_id"], name: "index_lineups_on_show_id"
  end

  create_table "producers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "show_fans", force: :cascade do |t|
    t.bigint "fan_id", null: false
    t.bigint "show_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fan_id"], name: "index_show_fans_on_fan_id"
    t.index ["show_id"], name: "index_show_fans_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.bigint "producer_id", null: false
    t.string "name"
    t.string "about"
    t.boolean "is_irl"
    t.boolean "is_virtual"
    t.string "venue"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["producer_id"], name: "index_shows_on_producer_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "comedian_fans", "comedians"
  add_foreign_key "comedian_fans", "fans"
  add_foreign_key "comedian_genres", "comedians"
  add_foreign_key "comedian_genres", "genres"
  add_foreign_key "events", "comedians"
  add_foreign_key "lineups", "comedians"
  add_foreign_key "lineups", "shows"
  add_foreign_key "show_fans", "fans"
  add_foreign_key "show_fans", "shows"
  add_foreign_key "shows", "producers"
end
