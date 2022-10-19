require 'rails_helper'

RSpec.describe DistrictBasic do
    it 'exists' do
        data = [:result,
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

        districtbasic = DistrictBasic.new(data)
        expect(districtbasic.name).to eq("District of Columbia Public Schools")
        expect(districtbasic.lea_id).to eq("1100030")
        expect(districtbasic.latitude).to eq("+38.9047587")
        expect(districtbasic.longitude).to eq("-077.0162860")
  end
end