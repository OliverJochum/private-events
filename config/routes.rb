Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "events#index"

  resources :users do
    resources :events
  end

  resources :events do
    post "events/:id/join" => "events#join"
    resources :users
    resources :event_attendings, only: :event_attendee
  end
end
