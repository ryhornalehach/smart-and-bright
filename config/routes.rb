Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :destroy, :edit, :update]
  root 'static_pages#index'
  resources :shop, only: [:index, :show], to: 'static_pages#index2'

end
