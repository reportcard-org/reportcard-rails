require 'rails_helper'

RSpec.describe UserDistrict, type: :model do

  describe 'relationships' do
    it { should belong_to(:user) }
    it { should belong_to(:district) }
  end
end
