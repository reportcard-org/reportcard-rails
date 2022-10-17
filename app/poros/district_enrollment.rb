class DistrictEnrollment

  attr_reader :number_of_schools, :enrollment

  def initialize(data)
    @number_of_schools = data[:results].first[:number_of_schools]

    @enrollment = data[:results].first[:enrollment]
  end

end