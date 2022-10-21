class CreateDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :districts do |t|
      t.string :name
      t.bigint :lea_id
      t.string :urban_centric_locale
      t.bigint :number_of_schools_in_district
      t.bigint :enrollment
      t.bigint :pre_k_teachers
      t.bigint :kindergarten_teachers
      t.bigint :elementary_teachers
      t.bigint :secondary_teachers
      t.bigint :total_teachers
      t.float :student_teacher_ratio
      t.bigint :instructional_aides
      t.bigint :guidance_counselors
      t.float :student_guidance_counselor_ratio
      t.bigint :librarian_total
      t.float :student_librarian_ratio
      t.bigint :total_staff
      t.bigint :district_expense_total
      t.bigint :expenses_for_instruction
      t.bigint :salaries_total
      t.bigint :salaries_instruction
      t.float :instruction_salary_percent_of_total
      t.float :per_student_expenditure
      t.float :per_teacher_salary_expenses
    
    end
  end
end
