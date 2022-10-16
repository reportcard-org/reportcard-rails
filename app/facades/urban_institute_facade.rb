class UrbanInstituteFacade

  def self.get_district_enrollment_data(lea_id)

    json = UrbanInstituteService.get_district_enrollment_data(lea_id)

    DistrictEnrollment.new(json)

  end

end