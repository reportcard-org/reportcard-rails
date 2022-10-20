# frozen_string_literal: true

module Types
  class DistrictType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null:false
    field :lea_id, Integer, null:false
  end
end
