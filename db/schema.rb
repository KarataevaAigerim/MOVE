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

ActiveRecord::Schema[7.0].define(version: 2023_06_12_071029) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "body_part_workouts", force: :cascade do |t|
    t.bigint "body_part_id", null: false
    t.bigint "workout_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["body_part_id"], name: "index_body_part_workouts_on_body_part_id"
    t.index ["workout_id"], name: "index_body_part_workouts_on_workout_id"
  end

  create_table "body_parts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days", force: :cascade do |t|
    t.integer "day_number"
    t.string "description"
    t.integer "duration"
    t.bigint "week_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["week_id"], name: "index_days_on_week_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "program_id", null: false
    t.date "date"
    t.string "status", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_invoices_on_program_id"
    t.index ["user_id"], name: "index_invoices_on_user_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.integer "weight"
    t.integer "height"
    t.string "goal"
    t.string "experience"
    t.integer "age"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "weeks", force: :cascade do |t|
    t.integer "week_number"
    t.string "description"
    t.bigint "program_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["program_id"], name: "index_weeks_on_program_id"
  end

  create_table "workout_days", force: :cascade do |t|
    t.bigint "workout_id", null: false
    t.bigint "day_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_workout_days_on_day_id"
    t.index ["workout_id"], name: "index_workout_days_on_workout_id"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "difficulty"
    t.string "video_url"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "body_part_workouts", "body_parts"
  add_foreign_key "body_part_workouts", "workouts"
  add_foreign_key "days", "weeks"
  add_foreign_key "invoices", "programs"
  add_foreign_key "invoices", "users"
  add_foreign_key "weeks", "programs"
  add_foreign_key "workout_days", "days"
  add_foreign_key "workout_days", "workouts"
end
