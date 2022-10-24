# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'
require 'csv'

Rails.application.load_tasks

namespace :csv_load do

  desc 'import districts'
  task :districts => :environment do
    csv = File.read("db/data/district_data.csv")
    csv_parsed = CSV.parse(csv, :headers => true)
    csv_parsed.each do |row|
      t = District.new
      t.id = row['lea_id']
      t.lea_id = row['lea_id']
      t.name = row['district_name']
      t.urban_centric_locale = row['urban_centric_locale']
      t.number_of_schools_in_district = row['number_of_schools_in_district']
      t.enrollment = row['enrollment']
      t.pre_k_teachers = row['pre_k_teachers']
      t.kindergarten_teachers = row['kindergarten_teachers']
      t.elementary_teachers = row['elementary_teachers']
      t.secondary_teachers = row['secondary_teachers']
      t.total_teachers = row['total_teachers']
      t.student_teacher_ratio = row['student_teacher_ratio']
      t.instructional_aides = row['instructional_aides']
      t.guidance_counselors = row['guidance_counselors']
      t.student_guidance_counselor_ratio = row['student_guidance_counselor_ratio']
      t.librarian_total = row['librarian_total']
      t.student_librarian_ratio = row['student_librarian_ratio']
      t.total_staff = row['total_staff']
      t.district_expense_total = row['district_expense_total']
      t.expenses_for_instruction = row['expenses_for_instruction']
      t.salaries_total = row['salaries_total']
      t.salaries_instruction = row['salaries_instruction']
      t.instruction_salary_percent_of_total = row['instruction_salary_percent_of_total']
      t.per_student_expenditure = row['per_student_expenditure']
      t.per_teacher_salary_expenses = row['per_teacher_salary_expenses']
      t.save
    end
  end
end
