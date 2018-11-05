Rails.application.routes.draw do
  get 'sessions/new'
  root 'pages#index'

  resources :users
  
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  get 'users/index'

  get 'pages/new'
  get 'pages/edit'
  get 'pages/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
