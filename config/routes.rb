Rails.application.routes.draw do

  root to: 'pages#home'

  resources :records do
    resources :reviews
  end

  # user routes   get '/signup' => 'users#new'
  resources :users
  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # admin routes
  get '/admin' => 'pages#admin'

end
