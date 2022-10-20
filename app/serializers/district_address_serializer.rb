class DistrictAddressSerializer

  def initialize(district_total_object)
    @district = district_total_object
  end

  def formatted_response
    {
      data: {
        id: nil,
        type: "school district",
        attributes: [
          lea_id: @district.lea_id,
          district_name: @district.district_name,
          urban_centric_locale: @district.urban_centric_locale,
          number_of_schools_in_district: @district.number_of_schools_in_district,
          enrollment: @district.student_population_size,
          pre_k_teachers: @district.pre_k_teachers,
          kindergarten_teachers: @district.kindergarten_teachers,
          elementary_teachers: @district.elementary_teachers,
          secondary_teachers: @district.secondary_teachers,
          total_teachers: @district.total_teachers,
          student_teacher_ratio: @district.student_teacher_ratio,
          instructional_aides: @district.instructional_aides,
          guidance_counselors: @district.guidance_counselors,
          student_guidance_counselor_ratio: @district.student_guidance_counselor_ratio,
          librarian_total: @district.total_library_staff,
          student_librarian_ratio: @district.student_librarian_ratio,
          total_staff: @district.total_staff,
          district_expense_total: @district.total_expenditure,
          expenses_for_instruction: @district.instruction_expenses,
          salaries_total: @district.total_salaries,
          salaries_instruction: @district.instructional_salaries,
          instruction_salary_percent_of_total: @district.instructional_salary_percent,
          per_student_expenditure: @district.per_student_expenditure,
          per_teacher_salary_expenses: @district.per_teacher_salary_expenses,
          latitude: @district.latitude,
          longitude: @district.longitude,
        ]
      }
    }
  end

end