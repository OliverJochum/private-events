Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"

  resources :users do
    resources :events, only: [:index]
  end

  resources :events do
    resources :users, only: [:index]
  end
end
