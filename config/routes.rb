Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  resources :users, only: :show
  resources :prototypes, only: [:edit,:new,:destroy,:create,:show,:update] do
  resources :comments, only: :create
  end
 
end
