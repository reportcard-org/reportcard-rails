class DistrictEnrollment

  attr_reader :number_of_schools, 
              :enrollment,
              :full_time_teachers,
              :district_name

  def initialize(data)
    @number_of_schools = data[:results].first[:number_of_schools]

    @enrollment = data[:results].first[:enrollment]

    @full_time_teachers = data[:results].first[:teachers_total_fte]

    @district_name = data[:results].first[:lea_name]
  end

end