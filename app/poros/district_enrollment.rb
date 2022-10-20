class DistrictEnrollment

  attr_reader :number_of_schools, 
              :enrollment,
              :full_time_teachers,
              :district_name,
              :urban_centric_locale,
              :pre_k_teachers,
              :kindergarten_teachers,
              :elementary_teachers,
              :secondary_teachers,
              :total_teachers,
              :student_teacher_ratio,
              :instructional_aides_total,
              :guidance_counselors_total,
              :total_library_staff,
              :student_librarian_ratio,
              :total_staff,
              :student_guidance_counselor_ratio

  def initialize(data)

    @district_name = data[:results].first[:lea_name]

    @urban_centric_locale = data[:results].first[:urban_centric_locale]

    @number_of_schools = data[:results].first[:number_of_schools]

    @enrollment = data[:results].first[:enrollment]

    @pre_k_teachers = data[:results].first[:teachers_prek_fte]

    @kindergarten_teachers = data[:results].first[:teachers_kindergarten_fte]

    @elementary_teachers = data[:results].first[:teachers_elementary_fte]

    @secondary_teachers = data[:results].first[:teachers_secondary_fte]

    @total_teachers = data[:results].first[:teachers_total_fte]

    @student_teacher_ratio = (@enrollment.to_f / @total_teachers.to_f).round(2)

    @instructional_aides_total = data[:results].first[:instructional_aides_fte]

    @guidance_counselors_total = data[:results].first[:guidance_counselors_total_fte]

    @total_library_staff = (data[:results].first[:librarian_specialists_fte] + data[:results].first[:librarian_support_staff_fte])

    @student_librarian_ratio = (@enrollment.to_f / @total_library_staff).round(2)

    @student_guidance_counselor_ratio = (@enrollment.to_f / @guidance_counselors_total.to_f).round(2)

    @total_staff = data[:results].first[:staff_total_fte]
  end

end