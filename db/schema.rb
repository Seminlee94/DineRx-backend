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

ActiveRecord::Schema.define(version: 2020_10_09_040444) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_ingredients", force: :cascade do |t|
    t.integer "food_id"
    t.integer "ingredient_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "food_nutritions", force: :cascade do |t|
    t.integer "food_id"
    t.integer "nutrition_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "category"
    t.text "description"
    t.boolean "regular", default: false
    t.boolean "cardiac", default: false
    t.boolean "low_sodium", default: false
    t.boolean "liquid", default: false
    t.boolean "low_iodine", default: false
    t.boolean "pureed", default: false
    t.boolean "diabetic", default: false
    t.boolean "vegetarian", default: false
    t.boolean "breakfast", default: false
    t.boolean "lunch", default: false
    t.boolean "dinner", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hospital_foods", force: :cascade do |t|
    t.integer "food_id"
    t.integer "hospital_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "name"
    t.string "health_system"
    t.string "city"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nutritions", force: :cascade do |t|
    t.string "title"
    t.string "amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_allergies", force: :cascade do |t|
    t.integer "user_id"
    t.integer "allergy_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_foods", force: :cascade do |t|
    t.integer "food_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest"
    t.string "name"
    t.string "dob"
    t.string "department"
    t.string "room"
    t.string "diet"
    t.text "restrictions"
    t.integer "hospital_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
