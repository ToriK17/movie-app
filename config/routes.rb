Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/single_actor_url/:id" => "actors#single_actor"

    get "/movies" => "movies#index"
  
    get "/movies/:id" => "movies#show"
    
    get "/actors/" => "actors#show"
    # query parameter
    # http://localhost:3000/api/actors?first_name=Jack   

    get "/actors/:id" => "actors#single_actor"
    # url segment parameter
    # http://localhost:3000/api/actors/9

    get "/actors_body_param/" => "actors#body_params"
    # body param query
    # http://localhost:3000/api/actors_body_param/
    # first_name Joe

  end   
end

