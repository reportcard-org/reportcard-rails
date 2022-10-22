class Mutations::CreateUserDistrict < Mutations::BaseMutation
  argument :userId, Integer, required: true
  argument :districtId, Integer, required: true

  field :userdistrict, Types::UserDistrictType, null: false
  field :errors, [String], null: false
  
  def resolve(userId:, districtId:)
    user_district = UserDistrict.new(user_id: userId, district_id: districtId)

    if (user_district.save)
      {
        userdistrict: user_district,
        errors: []
      }
    else
      {
        userdistrict: nil,
        errors: user_district.errors.full_messages
      }
    end
  end

end
