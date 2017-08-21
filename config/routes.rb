Rails.application.routes.draw do
  devise_for :coffeeshops
  devise_for :users
  root to: 'pages#home'

  resources :coffeeshops, only: [:index, :show] do
    resources :desks, only: [:show]
  end

  resources :bookings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
