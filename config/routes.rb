Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :fans do
    collection do
      get :my_fans, as: 'my_fans'
    end
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  get 'incoming_bookings', to: 'bookings#incoming_bookings', as: 'incoming_bookings'
  get 'outgoing_bookings', to: 'bookings#outgoing_bookings', as: 'outgoing_bookings'
end
