module Types
  class QueryType < Types::BaseObject
    #Ben S - to get all users
    # /users
    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :email, String
    end

    def user(email:)
      User.find_by(email: email)
    end

    field :districts, [Types::DistrictType], null: false
    def districts
      District.all
    end

    field :district, Types::DistrictType, null: false do
      argument :id, ID, required: true
    end

    def district(id:)
      District.find(id)
    end

    
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

  end
end
