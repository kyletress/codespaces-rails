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

ActiveRecord::Schema[7.0].define(version: 2023_05_21_020913) do
  create_table "athletes", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "concepts", force: :cascade do |t|
    t.string "name"
    t.integer "unit_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sport_id"
    t.index ["sport_id"], name: "index_concepts_on_sport_id"
    t.index ["unit_id"], name: "index_concepts_on_unit_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lineups", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_lineups_on_game_id"
    t.index ["team_id"], name: "index_lineups_on_team_id"
  end

  create_table "rosters", force: :cascade do |t|
    t.integer "athlete_id", null: false
    t.integer "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["athlete_id"], name: "index_rosters_on_athlete_id"
    t.index ["team_id"], name: "index_rosters_on_team_id"
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stats", force: :cascade do |t|
    t.integer "athlete_id", null: false
    t.integer "concept_id", null: false
    t.integer "game_id", null: false
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["athlete_id"], name: "index_stats_on_athlete_id"
    t.index ["concept_id"], name: "index_stats_on_concept_id"
    t.index ["game_id"], name: "index_stats_on_game_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.integer "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_teams_on_sport_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "concepts", "sports"
  add_foreign_key "concepts", "units"
  add_foreign_key "lineups", "games"
  add_foreign_key "lineups", "teams"
  add_foreign_key "rosters", "athletes"
  add_foreign_key "rosters", "teams"
  add_foreign_key "stats", "athletes"
  add_foreign_key "stats", "concepts"
  add_foreign_key "stats", "games"
  add_foreign_key "teams", "sports"
end
