class DistrictTotal

  attr_reader :lea_id,
              :latitude,
              :longitude,
              :district_name,
              :student_population_size,
              :number_of_schools_in_district,
              :pre_k_teachers,
              :kindergarten_teachers,
              :elementary_teachers,
              :secondary_teachers,
              :total_teachers,
              :instructional_aides,
              :guidance_counselors,
              :total_library_staff,
              :total_staff,
              :total_expenditure,
              :instruction_expenses,
              :total_salaries,
              :instructional_salaries

  def initialize(basic_district,enrollment_district,financial_district)
    @district_name = enrollment_district.district_name

    @lea_id = basic_district.lea_id
    @latitude = basic_district.latitude
    @longitude = basic_district.longitude

    @urban_rural_code = enrollment_district.urban_centric_locale

    @pre_k_teachers = enrollment_district.pre_k_teachers
    @kindergarten_teachers = enrollment_district.kindergarten_teachers
    @elementary_teachers = enrollment_district.elementary_teachers
    @secondary_teachers = enrollment_district.secondary_teachers
    @total_teachers = enrollment_district.total_teachers
    @instructional_aides = enrollment_district.instructional_aides_total
    @guidance_counselors = enrollment_district.guidance_counselors_total
    @total_library_staff = enrollment_district.total_library_staff
    @total_staff = enrollment_district.total_staff

    @instruction_expenses = financial_district.expenses_for_instruction
    @total_salaries = financial_district.salaries_total
    @instructional_salaries = financial_district.salaries_instruction

    @student_population_size = enrollment_district.enrollment
    @full_time_teachers = enrollment_district.full_time_teachers
    @number_of_schools_in_district = enrollment_district.number_of_schools

    @total_expenditure = financial_district.total_expenditure
    @salaries_instruction = financial_district.salaries_instruction
    @salaries_total = financial_district.salaries_total
  end

  def urban_centric_locale
    if @urban_rural_code == 1
      "Large City"
    elsif @urban_rural_code == 2
      "Midsize City"
    elsif @urban_rural_code == 3
      "Urban fringe of large city"
    elsif @urban_rural_code == 4
      "Urban fringe of midsize city"
    elsif @urban_rural_code == 5
      "Large Town"
    elsif @urban_rural_code == 6
      "Small Town"
    elsif @urban_rural_code == 7
      "Rural"
    elsif @urban_rural_code == 8
      "Rural"
    elsif @urban_rural_code == 9
      "Not assigned"
    elsif @urban_rural_code == 11
      "Large City"
    elsif @urban_rural_code == 12
      "Midsize City"
    elsif @urban_rural_code == 13
      "Small City"
    elsif @urban_rural_code == 21
      "Large Suburb"
    elsif @urban_rural_code == 22
      "Midsize Suburb"
    elsif @urban_rural_code == 23
      "Small Suburb"
    elsif @urban_rural_code == 31
      "Town (fringe)"
    elsif @urban_rural_code == 32
      "Town (distant)"
    elsif @urban_rural_code == 33
      "Town (remote)"
    elsif @urban_rural_code == 41
      "Rural (fringe)"
    elsif @urban_rural_code == 42
      "Rural (distant)"
    elsif @urban_rural_code == 43
      "Rural (remote"
    else
      "Unknown"
    end
  end

  def student_guidance_counselor_ratio
    (@student_population_size / @guidance_counselors.to_f).round(2)
  end

  def student_librarian_ratio
    (@student_population_size / @total_library_staff.to_f).round(2)
  end

  def student_teacher_ratio
    (@student_population_size.to_f / @total_teachers.to_f).round(2)
  end

  def per_student_expenditure
    (@total_expenditure.to_f / @student_population_size.to_f).round(2)
  end

  def instructional_salary_percent
    ((@salaries_instruction.to_f / @salaries_total.to_f) * 100).round(2)
  end

  def per_teacher_salary_expenses
    (@salaries_instruction.to_f / @total_teachers.to_f).round(2)
  end

end