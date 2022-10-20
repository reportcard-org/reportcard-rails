class District < ApplicationRecord
  validates :name, presence: true
  validates :lea_id, presence: true
  validates :urban_centric_locale, presence: true
  validates :number_of_schools_in_district, presence: true
  validates :enrollment, presence: true
  validates :pre_k_teachers, presence: true
  validates :kindergarten_teachers, presence: true
  validates :elementary_teachers, presence: true
  validates :secondary_teachers, presence: true
  validates :total_teachers, presence: true
  validates :student_teacher_ratio, presence: true
  validates :instructional_aides, presence: true
  validates :guidance_counselors, presence: true
  validates :student_guidance_counselor_ratio, presence: true
  validates :librarian_total, presence: true
  validates :student_librarian_ratio, presence: true
  validates :total_staff, presence: true
  validates :district_expense_total, presence: true
  validates :expenses_for_instruction, presence: true
  validates :salaries_total, presence: true
  validates :salaries_instruction, presence: true
  validates :instruction_salary_percent_of_total, presence: true
  validates :per_student_expenditure, presence: true
  validates :per_teacher_salary_expenses, presence: true

  has_many :user_districts
  has_many :users, through: :user_districts


end
