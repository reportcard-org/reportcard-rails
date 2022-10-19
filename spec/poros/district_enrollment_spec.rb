require 'rails_helper'

RSpec.describe DistrictEnrollment do

  it 'exists' do

    data = {:count=>1,
      :next=>nil,
      :previous=>nil,
      :results=>
        [{:year=>2018,
          :leaid=>"1100030",
          :lea_name=>"District of Columbia Public Schools",
          :fips=>11,
          :state_leaid=>"DC-001",
          :street_mailing=>"1200 First St NE",
          :city_mailing=>"Washington",
          :state_mailing=>"DC",
          :zip_mailing=>"20002",
          :zip4_mailing=>"",
          :street_location=>"1200 First St NE",
          :city_location=>"Washington",
          :state_location=>"DC",
          :zip_location=>"20002",
          :zip4_location=>"",
          :phone=>"(202)671-6030",
          :latitude=>38.90607,
          :longitude=>-77.006351,
          :urban_centric_locale=>11,
          :cbsa=>47900,
          :cbsa_type=>1,
          :csa=>548,
          :cmsa=>nil,
          :necta=>-2,
          :county_code=>"11001",
          :county_name=>"District of Columbia",
          :congress_district_id=>1198,
          :bureau_indian_education=>nil,
          :supervisory_union_number=>".",
          :agency_type=>1,
          :agency_level=>4,
          :boundary_change_indicator=>1,
          :agency_charter_indicator=>nil,
          :lowest_grade_offered=>-1,
          :highest_grade_offered=>12,
          :number_of_schools=>113,
          :enrollment=>49489,
          :english_language_learners=>6176,
          :migrant_students=>nil,
          :teachers_prek_fte=>365,
          :teachers_kindergarten_fte=>211,
          :teachers_elementary_fte=>2075,
          :teachers_secondary_fte=>1396,
          :teachers_ungraded_fte=>0,
          :teachers_total_fte=>4049,
          :instructional_aides_fte=>1064,
          :coordinators_fte=>1,
          :guidance_counselors_elem_fte=>39,
          :guidance_counselors_sec_fte=>79,
          :guidance_counselors_other_fte=>nil,
          :guidance_counselors_total_fte=>118,
          :librarian_specialists_fte=>96,
          :librarian_support_staff_fte=>3,
          :lea_administrators_fte=>50,
          :lea_admin_support_staff_fte=>796,
          :school_administrators_fte=>375,
          :school_admin_support_staff_fte=>430,
          :support_staff_students_fte=>1072,
          :support_staff_other_fte=>346,
          :staff_total_fte=>8402,
          :lea_staff_total_fte=>847,
          :other_staff_fte=>346.0,
          :school_staff_total_fte=>3041.75,
          :school_counselors_fte=>0.0,
          :state_leg_district_lower=>"-2",
          :state_leg_district_upper=>"11006",
          :school_psychologists_fte=>nil,
          :support_staff_stu_wo_psych_fte=>nil}]}
      
      district_enrollment = DistrictEnrollment.new(data)

      expect(district_enrollment.district_name).to eq("District of Columbia Public Schools")

      expect(district_enrollment.urban_centric_locale).to eq(11)

      expect(district_enrollment.pre_k_teachers).to eq(365)

      expect(district_enrollment.kindergarten_teachers).to eq(211)

      expect(district_enrollment.elementary_teachers).to eq(2075)

      expect(district_enrollment.secondary_teachers).to eq(1396)

      expect(district_enrollment.total_teachers).to eq(4049)

      expect(district_enrollment.number_of_schools).to eq(113)

      expect(district_enrollment.student_teacher_ratio).to eq(12.22)

      expect(district_enrollment.instructional_aides).to eq(1064)

      expect(district_enrollment.total_guidance_counselors).to eq(118)

      expect(district_enrollment.student_guidance_counselor_ratio).to eq(419.40)

      expect(district_enrollment.total_library_staff).to eq(99)

      expect(district_enrollment.student_librarian_ratio).to eq(499.89)

      # expect(district_enrollment.total_school_psychologists).to eq(0)

      # expect(district_enrollment.student_psychologist_ratio).to eq("divide by infinity error")

      expect(district_enrollment.total_staff).to eq(8402)

      expect(district_enrollment.enrollment).to eq(49489)

  end

end