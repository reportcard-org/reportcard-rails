class DistrictBasic

  attr_reader :name, :lea_id

  def initialize(data)

    if data.class == String
      @name = nil
      @lea_id = data
    else
      @name = data[1][:addressMatches][0][:geographies][:"Unified School Districts"].first[:BASENAME]

      @lea_id = data[1][:addressMatches][0][:geographies][:"Unified School Districts"].first[:GEOID]
    end
  end

end