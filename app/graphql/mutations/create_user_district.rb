class Mutations::CreateUserDistrict < Mutations::BaseMutation
  argument :user_id, String, required: true
  argument :district_id, String, required: true

  field :user_district, Types::UserDistrictType, null: false
  field :errors, [String], null: false
  def resolve(user_id:, district_id:)
    user_district = UserDistrict.new(user_id: user_id, district_id: district_id)

    if (user_district.save)
      {
        user_district: user_district,
        errors: []
      }
    else
      {
        user_district: nil,
        errors: user_district.errors.full_messages
      }
    end
  end

end
