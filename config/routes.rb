Rails.application.routes.draw do
  root 'welcome#home'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users
  post '/users/new' => 'users#create' 
  resources :rides
  resources :attractions


end
