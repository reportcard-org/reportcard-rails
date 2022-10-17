require 'rails_helper'

RSpec.describe CensusService do

  describe '#get_school_district' do
    it 'returns a response', :vcr do
      response = CensusService.get_school_district("1600 Pennsylvania Ave NW","Washington","DC")

      expect(response).to be_a(Hash)
      expect(response).to have_key(:result)
      expect(response[:result]).to be_a(Hash)
      expect(response[:result]).to have_key(:input)
      expect(response[:result][:input]).to be_a(Hash)
      expect(response[:result][:input]).to have_key(:address)
      expect(response[:result][:input][:address]).to be_a(Hash)

      expect(response[:result][:input][:address]).to have_key(:city)
      expect(response[:result][:input][:address][:city]).to be_a(String)
      expect(response[:result][:input][:address]).to have_key(:street)
      expect(response[:result][:input][:address][:street]).to be_a(String)
      expect(response[:result][:input][:address]).to have_key(:state)
      expect(response[:result][:input][:address][:state]).to be_a(String)

      expect(response[:result]).to have_key(:addressMatches)
      expect(response[:result][:addressMatches]).to be_an(Array)

      expect(response[:result][:addressMatches][0]).to be_a(Hash)
      expect(response[:result][:addressMatches][0]).to have_key(:geographies)

      expect(response[:result][:addressMatches][0][:geographies]).to be_a(Hash)

      expect(response[:result][:addressMatches][0][:geographies]).to have_key(:"Unified School Districts")

      expect(response[:result][:addressMatches][0][:geographies][:"Unified School Districts"]).to be_an(Array)

      expect(response[:result][:addressMatches][0][:geographies][:"Unified School Districts"].first).to be_a(Hash)

      expect(response[:result][:addressMatches][0][:geographies][:"Unified School Districts"].first).to have_key(:LOGRADE)
      expect(response[:result][:addressMatches][0][:geographies][:"Unified School Districts"].first[:LOGRADE]).to be_a(String)

      expect(response[:result][:addressMatches][0][:geographies][:"Unified School Districts"].first).to have_key(:HIGRADE)
      expect(response[:result][:addressMatches][0][:geographies][:"Unified School Districts"].first[:HIGRADE]).to be_a(String)

      expect(response[:result][:addressMatches][0][:geographies][:"Unified School Districts"].first).to have_key(:GEOID)
      expect(response[:result][:addressMatches][0][:geographies][:"Unified School Districts"].first[:GEOID].to_i).to be_an(Integer)

      expect(response[:result][:addressMatches][0][:geographies][:"Unified School Districts"].first).to have_key(:BASENAME)
      expect(response[:result][:addressMatches][0][:geographies][:"Unified School Districts"].first[:BASENAME]).to be_a(String)
    end
  end

end