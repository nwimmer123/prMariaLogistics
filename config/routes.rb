Rails.application.routes.draw do

  root to: "assistance_types#index"

    resources :users
    resources :assistance_types
  
    get "/login", to: "sessions#new", as: "login"
    get "/logout", to: "sessions#destroy"
    post "/login", to: "sessions#create"

end
