Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', passwords: 'users/passwords' }
  root "home#index"

  namespace :admin do
    root "home#index"

    resources :tours
  end

  resources :tours do
    member do
      post "like"
    end

    resources :bookings, only: [:create, :new, :show]
  end
end
