Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  root 'albums#index'

  resources :albums
end
