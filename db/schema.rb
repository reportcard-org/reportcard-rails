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
    t.integer "lea_id"
    t.string "urban_centric_locale"
    t.integer "number_of_schools_in_district"
    t.integer "enrollment"
    t.integer "pre_k_teachers"
    t.integer "kindergarten_teachers"
    t.integer "elementary_teachers"
    t.integer "secondary_teachers"
    t.integer "total_teachers"
    t.float "student_teacher_ratio"
    t.integer "instructional_aides"
    t.integer "guidance_counselors"
    t.float "student_guidance_counselor_ratio"
    t.integer "librarian_total"
    t.float "student_librarian_ratio"
    t.integer "total_staff"
    t.integer "district_expense_total"
    t.integer "expenses_for_instruction"
    t.integer "salaries_total"
    t.integer "salaries_instruction"
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
