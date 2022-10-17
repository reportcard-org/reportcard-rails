class DistrictTotal

  attr_reader :district_name,
              :student_population_size,
              :number_of_schools_in_district

  def initialize(basic_district,enrollment_district,financial_district)
    @district_name = basic_district.name

    @student_population_size = enrollment_district.enrollment
    @full_time_teachers = enrollment_district.full_time_teachers
    @number_of_schools_in_district = enrollment_district.number_of_schools

    @total_expenditure = financial_district.total_expenditure
    @salaries_instruction = financial_district.salaries_instruction
    @salaries_total = financial_district.salaries_total
  end

  def student_teacher_ratio
    (@full_time_teachers.to_f / @student_population_size.to_f).round(3)
  end

  def per_student_expenditure
    (@total_expenditure.to_f / @student_population_size.to_f).round(2)
  end

end