Rails.application.routes.draw do
  devise_for :coffeeshops
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'

  resources :coffeeshops, only: [:index, :show] do
    resources :desks, only: [:show]
  end

  resources :bookings
  resources :users, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
