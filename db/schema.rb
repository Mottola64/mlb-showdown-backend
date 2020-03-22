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

ActiveRecord::Schema.define(version: 2020_03_20_100337) do

  create_table "ballplayers", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "batters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "full_name"
    t.integer "year_id"
    t.string "set_id"
    t.integer "card_number"
    t.string "team"
    t.integer "onbase"
    t.integer "strikeout"
    t.integer "groundball"
    t.integer "flyball"
    t.integer "base_on_balls"
    t.integer "single"
    t.integer "single_plus"
    t.integer "double"
    t.integer "triple"
    t.integer "homerun"
    t.integer "points"
    t.integer "speed"
    t.string "hand"
    t.string "starting_position"
    t.integer "fielding_one"
    t.string "starting_position_two"
    t.integer "fielding_two"
    t.string "starting_position_three"
    t.integer "fielding_three"
    t.string "starting_position_four"
    t.integer "fielding_four"
    t.integer "total_outs"
    t.integer "extra_base_hits"
    t.integer "number_of_positions"
    t.string "timestamps"
  end

  create_table "decks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pitchers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "full_name"
    t.integer "year_id"
    t.string "set_id"
    t.integer "card_number"
    t.string "team"
    t.integer "control"
    t.integer "put_out"
    t.integer "strikeout"
    t.integer "groundball"
    t.integer "flyball"
    t.integer "base_on_balls"
    t.integer "single"
    t.integer "double"
    t.integer "triple"
    t.integer "homerun"
    t.integer "points"
    t.integer "innings_pitched"
    t.string "hand"
    t.string "position"
    t.string "timestamps"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
