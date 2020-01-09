Rails.application.routes.draw do
  resources :events, only: [:index, :show, :create]
  # resources :friendships
  resources :users, only: [:index, :show, :create]
  resources :user_events, only: [:index, :show, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
