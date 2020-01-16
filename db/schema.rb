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

ActiveRecord::Schema.define(version: 2020_01_16_082516) do

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.integer "armor_class"
    t.integer "hit_points"
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.string "save_proficiencies"
    t.string "skill_proficiencies"
    t.text "special_abilities"
    t.text "actions"
    t.string "alignment"
    t.string "hit_dice"
    t.string "size"
    t.string "type"
    t.string "subtype"
    t.string "languages"
    t.string "senses"
    t.integer "walk_speed"
    t.integer "climb_speed"
    t.integer "swim_speed"
    t.integer "fly_speed"
    t.integer "burrow_speed"
    t.string "challenge_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "encounters", force: :cascade do |t|
    t.string "location"
    t.text "environmental_effects"
    t.string "map_url"
    t.string "difficulty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name"
    t.string "attitude"
    t.text "goals"
    t.string "image_url"
    t.integer "armor_class"
    t.integer "hit_points"
    t.integer "str"
    t.integer "dex"
    t.integer "con"
    t.integer "int"
    t.integer "wis"
    t.integer "cha"
    t.string "save_proficiencies"
    t.string "skill_proficiencies"
    t.text "special_abilities"
    t.text "actions"
    t.string "alignment"
    t.string "hit_dice"
    t.string "size"
    t.string "type"
    t.string "subtype"
    t.string "languages"
    t.string "senses"
    t.integer "walk_speed"
    t.integer "climb_speed"
    t.integer "swim_speed"
    t.integer "fly_speed"
    t.integer "burrow_speed"
    t.string "challenge_rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
