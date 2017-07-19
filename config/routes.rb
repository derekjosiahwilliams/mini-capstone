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
end
