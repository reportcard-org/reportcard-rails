require 'rails_helper'

RSpec.describe UrbanInstituteFacade do

  it 'returns school district enrollment data by LEA ID' do

    lea_id = 1100030

    data = UrbanInstituteFacade.get_district_enrollment_data(lea_id)

    expect(data).to be_a(DistrictEnrollment)

  end

  it 'returns school district financial data by LEA ID' do

    lea_id = 1100030

    data = UrbanInstituteFacade.get_district_financial_data(lea_id)

    expect(data).to be_a(DistrictFinance)
    
  end

end