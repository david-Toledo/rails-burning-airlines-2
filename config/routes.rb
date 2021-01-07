Rails.application.routes.draw do
  get 'pages/home'
  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  get 'homepage/index'
  get 'flights/select/:id' => 'flights#search'
  get 'flights/:from/:to' => 'flights#destination'
  get 'reservations/select/:flight_id' => 'reservations#search'
  resources :reservations
  resources :users
  resources :flights
  resources :airplanes

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  root 'homepage#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
