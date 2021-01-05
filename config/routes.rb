Rails.application.routes.draw do
  get 'homepage/index'
  resources :reservations
  resources :users
  resources :flights
  resources :airplanes

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
