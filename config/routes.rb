Rails.application.routes.draw do
  root 'static_pages#index'
  resources :shop, only: [:index], to: 'static_pages#shop'
  resources :contacts, only: [:index], to: 'static_pages#contacts'

  namespace :api do
    namespace :v1 do
      resources :shop, only: [:index]
    end
  end

end
