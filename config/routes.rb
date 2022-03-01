Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"
  
  get "/events" => "events#index"
  post "/events" => "events#create"
  get "/events/:id" => "events#show"
  patch "/events/:id" => "events#update"
  delete "/events/:id" => "events#destroy"

  post "/sessions" => "sessions#create"

  get "/venues" => "venues#index"
  
end
