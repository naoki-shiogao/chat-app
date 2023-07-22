Rails.application.routes.draw do
  resources :users, only: [:edit, :update] 
  resources :messages
  devise_for :users
  root to: "messages#index"
end
