class CreateDistricts < ActiveRecord::Migration[5.2]
  def change
    create_table :districts do |t|
      t.string :name
      t.integer :lea_id
      t.string :urban_centric_locale
      t.integer :number_of_schools_in_district
      t.integer :enrollment
      t.integer :pre_k_teachers
      t.integer :kindergarten_teachers
      t.integer :elementary_teachers
      t.integer :secondary_teachers
      t.integer :total_teachers
      t.float :student_teacher_ratio
      t.integer :instructional_aides
      t.integer :guidance_counselors
      t.float :student_guidance_counselor_ratio
      t.integer :librarian_total
      t.float :student_librarian_ratio
      t.integer :total_staff
      t.integer :district_expense_total
      t.integer :expenses_for_instruction
      t.integer :salaries_total
      t.integer :salaries_instruction
      t.float :instruction_salary_percent_of_total
      t.float :per_student_expenditure
      t.float :per_teacher_salary_expenses
    
    end
  end
end
