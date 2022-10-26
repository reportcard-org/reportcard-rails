require 'rails_helper'

RSpec.describe District, type: :model do

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :lea_id}
    it { should allow_value(nil).for(:urban_centric_locale) }
    it { should allow_value(nil).for(:number_of_schools_in_district) }
    it { should allow_value(nil).for(:enrollment) }
    it { should allow_value(nil).for(:pre_k_teachers) }
    it { should allow_value(nil).for(:kindergarten_teachers) }
    it { should allow_value(nil).for(:elementary_teachers) }
    it { should allow_value(nil).for(:secondary_teachers) }
    it { should allow_value(nil).for(:total_teachers) }
    it { should allow_value(nil).for(:student_teacher_ratio) }
    it { should allow_value(nil).for(:instructional_aides) }
    it { should allow_value(nil).for(:guidance_counselors) }
    it { should allow_value(nil).for(:student_guidance_counselor_ratio) }
    it { should allow_value(nil).for(:librarian_total) }
    it { should allow_value(nil).for(:student_teacher_ratio) }
    it { should allow_value(nil).for(:total_staff) }
    it { should allow_value(nil).for(:district_expense_total) }
    it { should allow_value(nil).for(:expenses_for_instruction) }
    it { should allow_value(nil).for(:salaries_total) }
    it { should allow_value(nil).for(:salaries_instruction) }
    it { should allow_value(nil).for(:instruction_salary_percent_of_total) }
    it { should allow_value(nil).for(:per_student_expenditure) }
    it { should allow_value(nil).for(:per_teacher_salary_expenses) }
  end

  describe 'relationships' do
    it {should have_many(:user_districts)}
    it {should have_many(:users).through(:user_districts)}
  end
end
