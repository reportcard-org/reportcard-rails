class Api::V1::DistrictsController < ApplicationController

  def show
    @city = params[:address_params][:city]
    @street = params[:address_params][:street]
    @state = params[:address_params][:state]

    basic_district = CensusFacade.get_school_district(@street, @city, @state).first

    @lea_id = basic_district.lea_id.to_i

    enrollment_district = UrbanInstituteFacade.get_district_enrollment_data(@lea_id)

    finance_district = UrbanInstituteFacade.get_district_financial_data(@lea_id)

    total_district = DistrictTotal.new(basic_district,enrollment_district,finance_district)

    serializer = DistrictTotalSerializer.new(total_district)

    render json: serializer.formatted_response, status: 200

  end

end