Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home", as: "home"
  get "about", to: "pages#about", as: "about"
  get "contact", to: "pages#contact", as: "contact"

  # Defines the root path route ("/")
  # root "posts#index"
end
