require 'rails_helper'

describe 'district API' do

  it 'returns school district name, lea_id, enrollment, and financial info for a searched location' do

    search_params = {
      "city": "Washington",
      "street": "1600 Pennsylvania Ave NW",
      "state": "DC"
    }

    headers = {"CONTENT_TYPE" => "application/json"}

    get "/api/v1/district_data", headers: headers, params: JSON.generate(search_params: search_params)

    expect(response).to be_successful

  end

end