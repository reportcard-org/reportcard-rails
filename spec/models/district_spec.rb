require 'rails_helper'

RSpec.describe District, type: :model do

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :lea_id}
  end

  describe 'relationships' do
    it {should have_many(:user_districts)}
    it {should have_many(:users).through(:user_districts)}
  end
end
