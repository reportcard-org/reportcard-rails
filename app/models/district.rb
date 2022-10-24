class District < ApplicationRecord
  validates :name, presence: true
  validates :lea_id, presence: true
  validates :urban_centric_locale, presence: true, allow_nil: true
  validates :number_of_schools_in_district, presence: true, allow_nil: true
  validates :enrollment, presence: true, allow_nil: true
  validates :pre_k_teachers, presence: true, allow_nil: true
  validates :kindergarten_teachers, presence: true, allow_nil: true
  validates :elementary_teachers, presence: true, allow_nil: true
  validates :secondary_teachers, presence: true, allow_nil: true
  validates :total_teachers, presence: true, allow_nil: true
  validates :student_teacher_ratio, presence: true, allow_nil: true
  validates :instructional_aides, presence: true, allow_nil: true
  validates :guidance_counselors, presence: true, allow_nil: true
  validates :student_guidance_counselor_ratio, presence: true, allow_nil: true
  validates :librarian_total, presence: true, allow_nil: true
  validates :student_librarian_ratio, presence: true, allow_nil: true
  validates :total_staff, presence: true, allow_nil: true
  validates :district_expense_total, presence: true, allow_nil: true
  validates :expenses_for_instruction, presence: true, allow_nil: true
  validates :salaries_total, presence: true, allow_nil: true
  validates :salaries_instruction, presence: true, allow_nil: true
  validates :instruction_salary_percent_of_total, presence: true, allow_nil: true
  validates :per_student_expenditure, presence: true, allow_nil: true
  validates :per_teacher_salary_expenses, presence: true, allow_nil: true

  has_many :user_districts
  has_many :users, through: :user_districts


end
