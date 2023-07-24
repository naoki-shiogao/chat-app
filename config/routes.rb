Rails.application.routes.draw do
  resources :users, only: [:edit, :update] 
  resources :rooms, only: [:new, :create]
  devise_for :users
  root to: "rooms#index"
end
