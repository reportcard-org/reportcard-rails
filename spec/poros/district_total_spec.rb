require 'rails_helper'

RSpec.describe DistrictTotal do

  before :each do
    @basic_district_data = [:result,
 {:input=>
   {:address=>
     {:city=>"Washington",
      :street=>"1600 Pennsylvania Ave NW",
      :state=>"DC"},
    :vintage=>
     {:isDefault=>true,
      :id=>"2020",
      :vintageName=>"Census2020_Census2020",
      :vintageDescription=>"Census 2020 Vintage - Census 2020 Benchmark"},
    :benchmark=>
     {:isDefault=>false,
      :benchmarkDescription=>"Public Address Ranges - Census 2020 Benchmark",
      :id=>"2020",
      :benchmarkName=>"Public_AR_Census2020"}},
  :addressMatches=>
   [{:tigerLine=>{:side=>"L", :tigerLineId=>"76225813"},
     :geographies=>
      {:"Unified School Districts"=>
        [{:POP100=>"",
          :LOGRADE=>"PK",
          :GEOID=>"1100030",
          :CENTLAT=>"+38.9047587",
          :AREAWATER=>18709762,
          :STATE=>"11",
          :BASENAME=>"District of Columbia Public Schools",
          :OID=>28490331329267,
          :SDTYP=>"",
          :LSADC=>"00",
          :FUNCSTAT=>"E",
          :INTPTLAT=>"+38.9042474",
          :SDUNI=>"00030",
          :NAME=>"District of Columbia Public Schools",
          :OBJECTID=>7380,
          :CENTLON=>"-077.0162860",
          :HIGRADE=>"12",
          :HU100=>"",
          :AREALAND=>158316124,
          :INTPTLON=>"-077.0165167",
          :MTFCC=>"G5420",
          :UR=>""}]},
     :coordinates=>
      {:x=>-77.03534431753657, :y=>38.898752686023606},
     :addressComponents=>
      {:zip=>"20500",
       :streetName=>"PENNSYLVANIA",
       :preType=>"",
       :city=>"WASHINGTON",
       :preDirection=>"",
       :suffixDirection=>"NW",
       :fromAddress=>"1600",
       :state=>"DC",
       :suffixType=>"AVE",
       :toAddress=>"1698",
       :suffixQualifier=>"",
       :preQualifier=>""},:matchedAddress=>"1600 PENNSYLVANIA AVE NW, WASHINGTON, DC, 20500"}]}]

    @enrollment_district_data = {:count=>1,
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
    
    @financial_district_data = {:count=>1,
 :next=>nil,
 :previous=>nil,
 :results=>
  [{:year=>2018,
    :fips=>11,
    :leaid=>"1100030",
    :censusid=>"09200100130100",
    :rev_total=>1526358000.0,
    :rev_fed_total=>132899000.0,
    :rev_fed_child_nutrition_act=>24182000,
    :rev_fed_state_title_i=>30682000,
    :rev_fed_state_idea=>10440000,
    :rev_fed_state_math_sci_teach=>5845000,
    :rev_fed_state_drug_free=>7060000,
    :rev_fed_state_vocational=>3658000,
    :rev_fed_state_bilingual_ed=>842000,
    :rev_fed_state_other=>18260000,
    :rev_fed_direct_impact_aid=>31930000,
    :rev_fed_direct_indian_ed=>0,
    :rev_fed_direct_other=>0,
    :rev_fed_arra=>nil,
    :rev_fed_nonspec=>0,
    :rev_state_total=>0.0,
    :rev_state_gen_formula_assist=>0.0,
    :rev_state_special_ed=>0,
    :rev_state_transportation=>0,
    :rev_state_staff_improve=>0,
    :rev_state_compens_basic_ed=>0,
    :rev_state_vocational_ed=>0,
    :rev_state_outlay_capital_debt=>0,
    :rev_state_bilingual_ed=>0,
    :rev_state_gifted_talented=>0,
    :rev_state_sch_lunch=>0,
    :rev_state_oth_prog=>0.0,
    :rev_state_employee_benefits=>0,
    :rev_state_not_employee_benefits=>0,
    :rev_state_nonspec=>0,
    :rev_local_total=>1393459000,
    :rev_local_parent_govt=>1370149000,
    :rev_local_prop_tax=>-2,
    :rev_local_sales_tax=>-2,
    :rev_local_utility_tax=>-2,
    :rev_local_income_tax=>-2,
    :rev_local_other_tax=>-2,
    :rev_local_other_sch_systems=>0,
    :rev_local_cities_counties=>0,
    :rev_local_tuition_fees=>0,
    :rev_local_transportation_fees=>0,
    :rev_local_sch_lunch=>1134000,
    :rev_local_textbook_sales_rents=>0,
    :rev_local_dist_activ_receipts=>2221000,
    :rev_local_student_fees_nonspec=>0,
    :rev_local_oth_sales_serv=>0,
    :rev_local_interest_earnings=>0,
    :rev_local_rents_royalties=>1449000,
    :rev_local_property_sale=>0,
    :rev_local_fines_forfeits=>0,
    :rev_local_private_contrib=>3707000,
    :rev_local_misc=>14799000,
    :rev_nces=>0,
    :exp_total=>1575938000,
    :exp_current_elsec_total=>1099353000,
    :exp_current_instruction_total=>537647000,
    :exp_current_supp_serve_total=>519283000,
    :exp_current_pupils=>113765000,
    :exp_current_instruc_staff=>79160000,
    :exp_current_general_admin=>71232000,
    :exp_current_sch_admin=>77142000,
    :exp_current_operation_plant=>77817000,
    :exp_current_student_transport=>62916000,
    :exp_current_bco=>37251000.0,
    :exp_current_supp_serv_nonspec=>0,
    :exp_current_other=>42423000,
    :exp_current_food_serv=>42423000,
    :exp_current_enterprise=>0,
    :exp_current_other_elsec=>0,
    :exp_nonelsec=>8889000,
    :exp_nonelsec_community_serv=>0,
    :exp_nonelsec_adult_education=>8889000,
    :exp_nonelsec_other=>0,
    :exp_current_arra=>nil,
    :exp_textbooks=>116000,
    :exp_current_state_local_funds=>859645000,
    :exp_current_federal_funds=>130015000,
    :exp_utilities_energy=>23397000,
    :exp_tech_supplies_services=>6595000,
    :exp_tech_equipment=>8178000,
    :outlay_capital_total=>404196000,
    :outlay_capital_construction=>390007000,
    :outlay_capital_land_structures=>0,
    :outlay_capital_instruc_equip=>3456000,
    :outlay_capital_other_equip=>10733000,
    :outlay_capital_nonspec_equip=>0,
    :outlay_capital_arra=>nil,
    :payments_private_schools=>63500000.0,
    :payments_charter_schools=>0.0,
    :payments_state_govt=>0,
    :payments_local_govt=>0,
    :payments_other_sch_system=>0,
    :salaries_total=>753686000,
    :salaries_instruction=>431_471_000,
    :salaries_teachers_regular_prog=>276_750_000,
    :salaries_teachers_sped=>66666000,
    :salaries_teachers_vocational=>7565000,
    :salaries_teachers_other_ed=>4450000,
    :salaries_supp_pupils=>83428000,
    :salaries_supp_instruc_staff=>56366000,
    :salaries_supp_general_admin=>22807000,
    :salaries_supp_sch_admin=>66214000,
    :salaries_supp_operation_plant=>40556000,
    :salaries_supp_stud_transport=>36678000,
    :salaries_supp_bco=>14967000.0,
    :salaries_food_service=>1199000,
    :benefits_employee_total=>148355000,
    :benefits_employee_instruction=>92032000,
    :benefits_supp_pupils=>12241000.0,
    :benefits_supp_instruc_staff=>6631000,
    :benefits_supp_general_admin=>3247000,
    :benefits_supp_sch_admin=>10352000.0,
    :benefits_supp_operation_plant=>9665000,
    :benefits_supp_stud_transport=>10806000,
    :benefits_supp_bco=>3158000.0,
    :benefits_food_service=>225000,
    :benefits_enterprise_operations=>0,
    :debt_interest=>0,
    :debt_longterm_outstand_beg_fy=>0,
    :debt_longterm_issued_fy=>0,
    :debt_longterm_retired_fy=>0,
    :debt_longterm_outstand_end_fy=>0,
    :debt_shortterm_outstand_beg_fy=>0,
    :debt_shortterm_outstand_end_fy=>0,
    :assets_sinking_fund=>0,
    :assets_bond_fund=>0,
    :assets_other=>0,
    :enrollment_fall_responsible=>49065,
    :enrollment_fall_school=>48568,
    :exp_current_resa=>0.0}]}

    @basic_district = DistrictBasic.new(@basic_district_data)
    @enrollment_district = DistrictEnrollment.new(@enrollment_district_data)
    @financial_district = DistrictFinance.new(@financial_district_data)

    @total_district = DistrictTotal.new(@basic_district,@enrollment_district,@financial_district)
  end

  it 'exists' do
    expect(@total_district).to be_a(DistrictTotal)
  end

  it 'returns lea_id' do
    expect(@total_district.lea_id).to eq("1100030")
  end

  it 'returns district latitude' do
    expect(@total_district.latitude).to eq("+38.9047587")
  end

  it 'returns district longitude' do
    expect(@total_district.longitude).to eq("-077.0162860")
  end

  it 'returns school district name' do
    expect(@total_district.district_name).to eq("District of Columbia Public Schools")
  end

  it 'returns urban_centric_locale in readable format' do
    expect(@total_district.urban_centric_locale).to eq("Large City")
  end

  it 'returns number of schools in the district' do
    expect(@total_district.number_of_schools_in_district).to eq(113)
  end

  it 'returns number of pre-k teachers' do
    expect(@total_district.pre_k_teachers).to eq(365)
  end

  it 'returns number of kindergarten teachers' do
    expect(@total_district.kindergarten_teachers).to eq(211)
  end

  it 'returns number of elementary teachers' do
    expect(@total_district.elementary_teachers).to eq(2075)
  end

  it 'returns number of secondary teachers' do
    expect(@total_district.secondary_teachers).to eq(1396)
  end

  it 'returns total number of teachers' do
    expect(@total_district.total_teachers).to eq(4049)
  end

  it 'returns number of instructional aides' do
    expect(@total_district.instructional_aides).to eq(1064)
  end

  it 'returns number of guidance counselors' do
    expect(@total_district.guidance_counselors).to eq(118)
  end

  it 'returns student guidance counselor ratio' do
    expect(@total_district.student_guidance_counselor_ratio).to eq(419.40)
  end

  it 'returns student teacher ratio' do
    expect(@total_district.student_teacher_ratio).to eq(12.22)
  end

  it 'returns total number of library staff' do
    expect(@total_district.total_library_staff).to eq(96)
  end

  it 'returns student librarian ratio' do
    expect(@total_district.student_librarian_ratio).to eq(515.51)
  end

  it 'returns per student expenditure' do
    expect(@total_district.per_student_expenditure).to eq(31844.21)
  end

  it 'returns total number of staff' do
    expect(@total_district.total_staff).to eq(8402)
  end

  it 'returns total district expenditures' do
    expect(@total_district.total_expenditure).to eq(1575938000)
  end

  it 'returns expenditure on instruction' do
    expect(@total_district.instruction_expenses).to eq(537647000)
  end

  it 'returns total salary expenses' do
    expect(@total_district.total_salaries).to eq(753686000)
  end

  it 'returns total instructional salaries' do
    expect(@total_district.instructional_salaries).to eq(431471000)
  end

  it 'returns instructional salaries as percent of total salaries' do
    expect(@total_district.instructional_salary_percent).to eq(57.25)
  end

  it 'returns per teacher expenditures on salary' do
    expect(@total_district.per_teacher_salary_expenses).to eq(106562.36)
  end

  it 'returns number of students in district' do
    expect(@total_district.student_population_size).to eq(49489)
  end

end