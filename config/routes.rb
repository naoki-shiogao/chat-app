Rails.application.routes.draw do
  resources :users, only: [:edit, :update] 
  resources :messages
  resources :rooms, only: [:new, :create]
  devise_for :users
  root to: "messages#index"
end
