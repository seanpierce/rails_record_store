Rails.application.routes.draw do

  root to: 'pages#home'

  resources :records

  # user routes   get '/signup' => 'users#new'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
