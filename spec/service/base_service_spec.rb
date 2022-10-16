require 'rails_helper'

RSpec.describe BaseService do

  describe '#census_connection' do
    it 'returns a response' do
      service = BaseService.census_connection

      expect(service).to be_an(Object)
    end
  end

end