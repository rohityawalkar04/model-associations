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

ActiveRecord::Schema.define(version: 2021_11_04_163703) do

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_addresses_on_player_id"
  end

  create_table "appearances", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_appearances_on_game_id"
    t.index ["player_id"], name: "index_appearances_on_player_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "home"
    t.string "away"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "last_name"
    t.integer "team_id", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "subject_id", null: false
    t.index ["subject_id"], name: "index_students_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_subjects_on_student_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addresses", "players"
  add_foreign_key "appearances", "games"
  add_foreign_key "appearances", "players"
  add_foreign_key "players", "teams"
  add_foreign_key "students", "subjects"
  add_foreign_key "subjects", "students"
end
