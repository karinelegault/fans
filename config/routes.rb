Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :fans do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
end
