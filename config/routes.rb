Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    
    get "/actors" => "actors#index"

    get "/movies" => "movies#index"
    
    get "/actors/:id" => "actors#show"

    get "/movies/:id" => "movies#show"
    
    post "/actors" => "actors#create"

    post "/movies" => "movies#create"

    patch "/actors/:id" => "actors#update"

    patch "/movies/:id" => "movies#update"

    delete "/actors/:id" => "actors#update"

    delete "/movies/:id" => "movies#create"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    # get "/actors_body_param/" => "actors#body_params"

  end 
end

