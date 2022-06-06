Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :trips do
    resources :bookings, only: %i[new create]
  end

  resources :bookings, only: [:destroy]
  resources :companies do
    resources :trips, only: %i[new create]
  end
end
