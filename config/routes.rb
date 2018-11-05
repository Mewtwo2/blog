Rails.application.routes.draw do
  root 'pages#index'

  # Routes for main pages starts here
  get 'pages/new'
  get 'pages/edit'
  get 'pages/show'
  get 'pages/index'

  # Routes for posts
  resources :posts
  get 'posts/new'
  get 'posts/edit'
  get 'posts/show'

  # Routes for users starts here
  resources :users
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  get 'users/index'

  # Routes for sessions starts here
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
