# frozen_string_literal: true

module Types
  class UserDistrictType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :district_id, Integer, null: false
  end
end
