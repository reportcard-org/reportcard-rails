require 'rails_helper'

describe 'district API' do

  it 'returns school district name, lea_id, enrollment, and financial info for a searched location' do

    address_params = {
      "city": "Washington",
      "street": "1600 Pennsylvania Ave NW",
      "state": "DC"
    }

    headers = {"CONTENT_TYPE" => "application/json"}

    post "/api/v1/district_data", headers: headers, params: JSON.generate(address_params)

    expect(response).to be_successful

    data = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(data).to be_a(Hash)
    expect(data).to have_key(:id)
    expect(data[:id]).to eq(nil)

    expect(data).to have_key(:type)
    expect(data[:type]).to eq("school district")

    expect(data).to have_key(:attributes)
    expect(data[:attributes]).to be_an(Array)

    expect(data[:attributes][0]).to have_key(:student_teacher_ratio)

    expect(data[:attributes][1]).to have_key(:per_student_expenditure)

    expect(data[:attributes][2]).to have_key(:teacher_salary_info)

    expect(data[:attributes][3]).to have_key(:student_population_size)

    expect(data[:attributes][4]).to have_key(:number_of_schools_in_district)

  end

end