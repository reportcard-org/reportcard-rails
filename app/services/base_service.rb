class BaseService

  def self.census_connection
    Faraday.new(url: 'https://geocoding.geo.census.gov/')
  end

  def self.urban_institute_connection
    Faraday.new(url: 'https://educationdata.urban.org/')
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end 

end