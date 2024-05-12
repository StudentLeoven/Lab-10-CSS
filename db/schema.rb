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

ActiveRecord::Schema[7.1].define(version: 2024_04_02_004653) do
  create_table "courses", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "subject_id", null: false
    t.bigint "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_courses_on_student_id"
    t.index ["subject_id"], name: "index_courses_on_subject_id"
  end

  create_table "students", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "year_level"
    t.integer "number_of_units", default: 0
    t.float "total_assessment", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email_address"
  end

  create_table "subjects", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "section"
    t.integer "number_of_units", default: 0
    t.float "per_unit_rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number_of_students"
  end

  add_foreign_key "courses", "students"
  add_foreign_key "courses", "subjects"
end
