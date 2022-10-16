require 'rails_helper'

RSpec.describe CensusFacade do

  it 'returns a school district name and GEOID from census call' do

    street = "1600 Pennsylvania Ave NW"
    city = "Washington"
    state = "DC"

    district = CensusFacade.get_school_district(street,city,state)

    expect(district).to be_an(Array)

    expect(district.first.name).to eq("District of Columbia Public Schools")
    expect(district.first.lea_id).to eq("1100030")

  end

end