Rails.application.routes.draw do
  resources :users, only: [:edit, :update] 
  resources :rooms, only: [:new, :create] do
    resources :messages, only: [:index, :create]
  end
  devise_for :users
  root to: "rooms#index"
end
