class CensusFacade

  def self.get_school_district(street,city,state)
    json = CensusService.get_school_district(street,city,state)

    json.map do |census_data|
      DistrictBasic.new(census_data)
    end
  end

end