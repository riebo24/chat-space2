Rails.application.routes.draw do
  root "groups#index"
  devise_for :users
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create, :edit, :update, :index]
end
