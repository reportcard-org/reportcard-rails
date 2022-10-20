# frozen_string_literal: true

module Types
  class DistrictType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :lea_id, Integer
  end
end
