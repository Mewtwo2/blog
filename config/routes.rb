Rails.application.routes.draw do
  root 'pages#index'

  # Routes for main pages starts here
  get 'pages/index'
  get 'pages/about'
  get 'pages/faq'

  # Routes for posts
  resources :posts
  get 'posts/new'
  get 'posts/edit'
  get 'posts/show'

  # Routes for users starts here, these are going to be commented out unless I decide to implement user sign ups and logins
  # resources :users
  # get 'users/new'
  # get 'users/edit'
  # get 'users/show'
  # get 'users/index'

  # Routes for sessions starts here
  get '/akatosh/login/begodlyandstuff' => 'sessions#new'
  post '/akatosh/login/begodlyandstuff' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
