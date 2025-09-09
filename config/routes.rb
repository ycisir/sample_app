Rails.application.routes.draw do

  root "users#list_users"
  resources :products
  get "users/list_users"
  get "users/show_new_template"
  get "users/display_other_template"
  get "users/new_user"
  post "users/create_user"
  get "users/show/:id", to: "users#show", as: "show_user" # named and parameterized route (:id means changing)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
