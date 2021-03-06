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

ActiveRecord::Schema.define(version: 2021_10_02_113544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercise_records", force: :cascade do |t|
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.bigint "percentage_one_rm_exercise_id", null: false
    t.bigint "rpe_exercise_id", null: false
    t.index ["percentage_one_rm_exercise_id"], name: "index_exercise_records_on_percentage_one_rm_exercise_id"
    t.index ["rpe_exercise_id"], name: "index_exercise_records_on_rpe_exercise_id"
    t.index ["user_id"], name: "index_exercise_records_on_user_id"
  end

  create_table "exercise_set_records", force: :cascade do |t|
    t.integer "reps"
    t.integer "weight"
    t.integer "rpe"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "exercise_record_id", null: false
    t.index ["exercise_record_id"], name: "index_exercise_set_records_on_exercise_record_id"
  end

  create_table "one_rep_maxes", force: :cascade do |t|
    t.string "name"
    t.integer "one_rep_max_weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_one_rep_maxes_on_user_id"
  end

  create_table "percentage_one_rm_exercises", force: :cascade do |t|
    t.string "name"
    t.integer "sets"
    t.integer "reps"
    t.integer "rest_period"
    t.integer "percentage_one_rm"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "workout_id", null: false
    t.index ["workout_id"], name: "index_percentage_one_rm_exercises_on_workout_id"
  end

  create_table "program_weeks", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "program_id", null: false
    t.integer "number"
    t.index ["program_id"], name: "index_program_weeks_on_program_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_programs_on_user_id"
  end

  create_table "rpe_exercises", force: :cascade do |t|
    t.string "name"
    t.integer "sets"
    t.integer "reps"
    t.integer "rest_period"
    t.integer "rpe"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "workout_id", null: false
    t.index ["workout_id"], name: "index_rpe_exercises_on_workout_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "program_week_id", null: false
    t.index ["program_week_id"], name: "index_workouts_on_program_week_id"
  end

  add_foreign_key "exercise_records", "percentage_one_rm_exercises"
  add_foreign_key "exercise_records", "rpe_exercises"
  add_foreign_key "exercise_records", "users"
  add_foreign_key "exercise_set_records", "exercise_records"
  add_foreign_key "one_rep_maxes", "users"
  add_foreign_key "percentage_one_rm_exercises", "workouts"
  add_foreign_key "program_weeks", "programs"
  add_foreign_key "programs", "users"
  add_foreign_key "rpe_exercises", "workouts"
  add_foreign_key "workouts", "program_weeks"
end
