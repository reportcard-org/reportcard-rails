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

    attributes = data[:attributes]

    expect(attributes[0]).to have_key(:lea_id)
    expect(attributes[1]).to have_key(:district_name)
    expect(attributes[2]).to have_key(:urban_centric_locale)
    expect(attributes[3]).to have_key(:number_of_schools_in_district)
    expect(attributes[4]).to have_key(:enrollment)
    expect(attributes[5]).to have_key(:pre_k_teachers)
    expect(attributes[6]).to have_key(:kindergarten_teachers)
    expect(attributes[7]).to have_key(:elementary_teachers)
    expect(attributes[8]).to have_key(:secondary_teachers)
    expect(attributes[9]).to have_key(:total_teachers)
    expect(attributes[10]).to have_key(:student_teacher_ratio)
    expect(attributes[11]).to have_key(:instructional_aides)
    expect(attributes[12]).to have_key(:guidance_counselors)
    expect(attributes[13]).to have_key(:student_guidance_counselor_ratio)
    expect(attributes[14]).to have_key(:librarian_total)
    expect(attributes[15]).to have_key(:student_librarian_ratio)
    expect(attributes[16]).to have_key(:total_staff)
    expect(attributes[17]).to have_key(:district_expense_total)
    expect(attributes[18]).to have_key(:expenses_for_instruction)
    expect(attributes[19]).to have_key(:salaries_total)
    expect(attributes[20]).to have_key(:salaries_instruction)
    expect(attributes[21]).to have_key(:instruction_salary_percent_of_total)
    expect(attributes[22]).to have_key(:per_student_expenditure)
    expect(attributes[23]).to have_key(:per_teacher_salary_expenses)
    expect(attributes[24]).to have_key(:latitude)
    expect(attributes[25]).to have_key(:longitude)

  end

  it 'returns district data by lea_id' do

    lea_params = {
      "lea_id": "1602430"
    }
    #north gem district, idaho

    headers = {"CONTENT_TYPE" => "application/json"}

    post "/api/v1/lea_data", headers: headers, params: JSON.generate(lea_params)

    expect(response).to be_successful

    data = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(data).to be_a(Hash)
    expect(data).to have_key(:id)
    expect(data[:id]).to eq(nil)

    expect(data).to have_key(:type)
    expect(data[:type]).to eq("school district")

    expect(data).to have_key(:attributes)
    expect(data[:attributes]).to be_an(Array)

    attributes = data[:attributes]

    expect(attributes[0]).to have_key(:lea_id)
    expect(attributes[1]).to have_key(:district_name)
    expect(attributes[2]).to have_key(:urban_centric_locale)
    expect(attributes[3]).to have_key(:number_of_schools_in_district)
    expect(attributes[4]).to have_key(:enrollment)
    expect(attributes[5]).to have_key(:pre_k_teachers)
    expect(attributes[6]).to have_key(:kindergarten_teachers)
    expect(attributes[7]).to have_key(:elementary_teachers)
    expect(attributes[8]).to have_key(:secondary_teachers)
    expect(attributes[9]).to have_key(:total_teachers)
    expect(attributes[10]).to have_key(:student_teacher_ratio)
    expect(attributes[11]).to have_key(:instructional_aides)
    expect(attributes[12]).to have_key(:guidance_counselors)
    expect(attributes[13]).to have_key(:student_guidance_counselor_ratio)
    expect(attributes[14]).to have_key(:librarian_total)
    expect(attributes[15]).to have_key(:student_librarian_ratio)
    expect(attributes[16]).to have_key(:total_staff)
    expect(attributes[17]).to have_key(:district_expense_total)
    expect(attributes[18]).to have_key(:expenses_for_instruction)
    expect(attributes[19]).to have_key(:salaries_total)
    expect(attributes[20]).to have_key(:salaries_instruction)
    expect(attributes[21]).to have_key(:instruction_salary_percent_of_total)
    expect(attributes[22]).to have_key(:per_student_expenditure)
    expect(attributes[23]).to have_key(:per_teacher_salary_expenses)
    expect(attributes[24]).to have_key(:latitude)
    expect(attributes[25]).to have_key(:longitude)

  end

end