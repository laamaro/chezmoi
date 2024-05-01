Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :properties do
    resources :bookings, only: %i[new create]
  end

  get 'my_properties', to: 'properties#my_properties', as: :my_properties

  resources :bookings, except: %i[new create]
  resources :users, only: :show
end
