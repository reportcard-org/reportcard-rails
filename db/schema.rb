# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_18_045033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.string "lea_id"
    t.string "urban_centric_locale"
    t.bigint "number_of_schools_in_district"
    t.bigint "enrollment"
    t.bigint "pre_k_teachers"
    t.bigint "kindergarten_teachers"
    t.bigint "elementary_teachers"
    t.bigint "secondary_teachers"
    t.bigint "total_teachers"
    t.float "student_teacher_ratio"
    t.bigint "instructional_aides"
    t.bigint "guidance_counselors"
    t.float "student_guidance_counselor_ratio"
    t.bigint "librarian_total"
    t.float "student_librarian_ratio"
    t.bigint "total_staff"
    t.bigint "district_expense_total"
    t.bigint "expenses_for_instruction"
    t.bigint "salaries_total"
    t.bigint "salaries_instruction"
    t.float "instruction_salary_percent_of_total"
    t.float "per_student_expenditure"
    t.float "per_teacher_salary_expenses"
  end

  create_table "user_districts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "district_id"
    t.index ["district_id"], name: "index_user_districts_on_district_id"
    t.index ["user_id"], name: "index_user_districts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "user_districts", "districts"
  add_foreign_key "user_districts", "users"
end
