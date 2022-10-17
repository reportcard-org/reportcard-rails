class DistrictBasic

  attr_reader :name, :lea_id

  def initialize(data)

    @name = data[1][:addressMatches][0][:geographies][:"Unified School Districts"].first[:BASENAME]

    @lea_id = data[1][:addressMatches][0][:geographies][:"Unified School Districts"].first[:GEOID]

  end

end