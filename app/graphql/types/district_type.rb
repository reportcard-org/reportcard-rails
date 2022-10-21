# frozen_string_literal: true

module Types
  class DistrictType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :lea_id, String
    field :urban_centric_locale, String
    field :number_of_schools_in_district, Integer
    field :enrollment, Integer
    field :pre_k_teachers, Integer
    field :kindergarten_teachers, Integer
    field :elementary_teachers, Integer
    field :secondary_teachers, Integer
    field :total_teachers, Integer
    field :student_teacher_ratio, Float
    field :instructional_aides, Integer
    field :guidance_counselors, Integer
    field :student_guidance_counselor_ratio, Float
    field :librarian_total, Integer
    field :student_librarian_ratio, Float
    field :total_staff, Integer
    field :district_expense_total, Integer
    field :expenses_for_instruction, Integer
    field :salaries_total, Integer
    field :salaries_instruction, Integer
    field :instruction_salary_percent_of_total, Float
    field :per_student_expenditure, Float
    field :per_teacher_salary_expenses, Float
    field :user_districts, [Types::UserDistrictType]
  end
end
