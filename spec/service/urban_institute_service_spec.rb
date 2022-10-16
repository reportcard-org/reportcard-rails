require 'rails_helper'

RSpec.describe UrbanInstituteService do

  describe "#get_district_enrollment_data" do
    it 'returns a response' do
      response = UrbanInstituteService.get_district_enrollment_data(1100030)

      expect(response).to be_a(Hash)

      expect(response).to have_key(:results)
      expect(response[:results]).to be_an(Array)

      expect(response[:results].first).to be_a(Hash)

      expect(response[:results].first).to have_key(:number_of_schools)
      expect(response[:results].first[:number_of_schools]).to be_an(Integer)

      expect(response[:results].first).to have_key(:enrollment)
      expect(response[:results].first[:enrollment]).to be_an(Integer)

      expect(response[:results].first).to have_key(:teachers_total_fte)
      expect(response[:results].first[:teachers_total_fte]).to be_an(Integer)
    end
  end

end