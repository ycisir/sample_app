Rails.application.routes.draw do
  resources :addresses

  root "users#list_users"
  resources :products do
    collection do
      get "premium"
      get "by_price"
    end
  end

  get "users/list_users"
  get "users/login", as: "login"
  post "users/get_login"
  get "users/logout", as: "logout"
  get "users/show_new_template"
  get "users/display_other_template"
  get "users/new_user"
  post "users/create_user"
  get "users/show/:id", to: "users#show", as: "show_user" # named and parameterized route (:id means changing)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
