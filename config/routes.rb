Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "products#index"

  get "/dragons" => "products#index"
  get "/dragons/new" => "products#new"
  post "/dragons" => "products#create"
  get "/dragons/:id" => "products#show"
  get "/dragons/:id/edit" => "products#edit"
  patch "/dragons/:id" => "products#update"
  delete "/dragons/:id" => "products#destory"

  get "/dragons_search" => "products#search"

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"

  post "/orders" => 'orders#create'
  get "/orders/:id" => "orders#show"

  get "/carted_products" => 'carted_products#index'
  post "/carted_products" => 'carted_products#create'
  get "/carted_products/:id" => 'carted_products#show'
end