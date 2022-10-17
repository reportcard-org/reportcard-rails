class DistrictTotal

  attr_reader :district_name,
              :student_population_size,
              :number_of_schools_in_district

  def initialize(basic_district,enrollment_district,financial_district)
    # require 'pry'; binding.pry
    @district_name = basic_district.name

    @student_population_size = enrollment_district.enrollment
    @number_of_schools_in_district = enrollment_district.number_of_schools

  end

end