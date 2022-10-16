class BaseService

  def self.census_connection
    Faraday.new(url: 'https://geocoding.geo.census.gov/')
  end

end