class DistrictTotalSerializer

  def initialize(district_total_object)
    @district = district_total_object
  end

  def formatted_response
    {
      data: {
        id: nil,
        type: "school district",
        attributes: [
          {student_teacher_ratio: @district.student_teacher_ratio},
          {per_student_expenditure: @district.per_student_expenditure},
          {teacher_salary_info: @district.per_teacher_salary_expenses},
          {student_population_size: @district.student_population_size},
          {number_of_schools_in_district: @district.number_of_schools_in_district}
        ]
      }
    }
  end

end