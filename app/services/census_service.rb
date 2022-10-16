class CensusService

  def self.get_school_district(street,city,state)
    response = BaseService.census_connection.get("geocoder/geographies/address?street=#{street}&city=#{city}&state=#{state}&benchmark=Public_AR_Census2020&vintage=Census2020_Census2020&layers=Unified School Districts,Secondary School Districts,Elementary School Districts&format=json")
    
    BaseService.get_json(response)
  end

end