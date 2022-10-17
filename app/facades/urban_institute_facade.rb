class UrbanInstituteFacade

  def self.get_district_enrollment_data(lea_id)

    json = UrbanInstituteService.get_district_enrollment_data(lea_id)

    DistrictEnrollment.new(json)

  end

  def self.get_district_financial_data(lea_id)

    json = UrbanInstituteService.get_district_financial_data(lea_id)

    DistrictFinance.new(json)

  end

end