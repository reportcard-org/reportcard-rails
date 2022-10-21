# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  user = User.create(name: Faker::Name.name, email: Faker::Internet.email )
end

5.times do
  district = District.create(
    name: Faker::Name.name,
    lea_id: Faker::Number.number(digits: 4),
    urban_centric_locale: "rural",
    number_of_schools_in_district: 100,
    enrollment: 4000,
    pre_k_teachers: 12,
    kindergarten_teachers: 16,
    elementary_teachers: 18,
    secondary_teachers: 20,
    total_teachers: 100,
    student_teacher_ratio: 12.2,
    instructional_aides: 100,
    guidance_counselors: 1,
    student_guidance_counselor_ratio: 16.1,
    librarian_total: 12,
    student_librarian_ratio: 10.4,
    total_staff: 1120,
    district_expense_total: 12344567,
    expenses_for_instruction: 4444444,
    salaries_total: 20230923,
    salaries_instruction: 99999,
    instruction_salary_percent_of_total: 12.6,
    per_student_expenditure: 545423,
    per_teacher_salary_expenses: 123
  )
end

user_district_1 = UserDistrict.create(user_id: User.all[0].id, district_id: District.all[0].id)
user_district_2 = UserDistrict.create(user_id: User.all[1].id, district_id: District.all[1].id)
user_district_3 = UserDistrict.create(user_id: User.all[2].id, district_id: District.all[2].id)
user_district_4 = UserDistrict.create(user_id: User.all[3].id, district_id: District.all[3].id)
user_district_5 = UserDistrict.create(user_id: User.all[4].id, district_id: District.all[4].id)
