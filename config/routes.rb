Rails.application.routes.draw do
  get 'homepage/index'
  get 'flights/select/:id' => 'flights#search'
  get 'reservations/select/:flight_id' => 'reservations#search'
  resources :reservations
  resources :users
  resources :flights
  resources :airplanes

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
