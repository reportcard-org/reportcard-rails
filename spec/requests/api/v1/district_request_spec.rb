require 'rails_helper'

describe 'district API' do

  it 'returns school district name, lea_id, enrollment, and financial info for a searched location' do

    address_params = {
      "city": "Washington",
      "street": "1600 Pennsylvania Ave NW",
      "state": "DC"
    }

    headers = {"CONTENT_TYPE" => "application/json"}

    post "/api/v1/district_data", headers: headers, params: JSON.generate(address_params: address_params)

    expect(response).to be_successful

    data = JSON.parse(response.body, symbolize_names: true)

  end

end