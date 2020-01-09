Rails.application.routes.draw do
  resources :events
  resources :friendships
  resources :user_events
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
