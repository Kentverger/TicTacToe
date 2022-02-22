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

ActiveRecord::Schema[7.0].define(version: 2022_02_22_012111) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coordinates", force: :cascade do |t|
    t.integer "x"
    t.integer "y"
    t.string "badge"
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_coordinates_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.bigint "first_player_id", null: false
    t.bigint "second_player_id", null: false
    t.bigint "winner_player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_player_id"], name: "index_games_on_first_player_id"
    t.index ["second_player_id"], name: "index_games_on_second_player_id"
    t.index ["winner_player_id"], name: "index_games_on_winner_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "badge"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turns", force: :cascade do |t|
    t.bigint "coordinate_id", null: false
    t.bigint "player_id", null: false
    t.bigint "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coordinate_id"], name: "index_turns_on_coordinate_id"
    t.index ["game_id"], name: "index_turns_on_game_id"
    t.index ["player_id"], name: "index_turns_on_player_id"
  end

  add_foreign_key "coordinates", "games"
  add_foreign_key "games", "players", column: "first_player_id"
  add_foreign_key "games", "players", column: "second_player_id"
  add_foreign_key "games", "players", column: "winner_player_id"
  add_foreign_key "turns", "coordinates"
  add_foreign_key "turns", "games"
  add_foreign_key "turns", "players"
end
