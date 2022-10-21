# frozen_string_literal: true

module Types
  class UserDistrictType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, String, null: false
    field :district_id, String, null: false
  end
end
