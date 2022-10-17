class UrbanInstituteService

  def self.get_district_enrollment_data(lea_id)
    response = BaseService.urban_institute_connection.get("api/v1/school-districts/ccd/directory/2018/?leaid=#{lea_id}")

    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_district_financial_data(lea_id)
    response = BaseService.urban_institute_connection.get("api/v1/school-districts/ccd/finance/2018/?leaid=#{lea_id}")

    JSON.parse(response.body, symbolize_names: true)
  end

end