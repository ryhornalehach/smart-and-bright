Rails.application.routes.draw do
  root 'static_pages#index'
  resources :shop, only: [:index, :show], to: 'static_pages#shop'

  namespace :api do
    namespace :v1 do
      resources :shop, only: [:index]
    end
  end

end
