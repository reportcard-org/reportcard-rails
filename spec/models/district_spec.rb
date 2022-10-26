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

  end

  describe 'relationships' do
    it {should have_many(:user_districts)}
    it {should have_many(:users).through(:user_districts)}
  end
end
