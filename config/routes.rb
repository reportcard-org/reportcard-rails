Rails.application.routes.draw do

  if Rails.env.development?
    mount GraphiQL::Rails:Engine, at: '/graphiql' , graphql_path: "graphql#execute"
  end
  post "/graphql", to: "graphql#execute"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post "/district_data", to: "districts#show"
      post "/lea_data", to: "districts#lea_show"
    end
  end
end
