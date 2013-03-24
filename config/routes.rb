TodolistApp::Application.routes.draw do
  
  get 'signup'=> 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'  
  get 'logout'=> 'sessions#destroy'


  resources :sessions
  resources :users
  resources :tasks
  resources :lists


  root :to => 'lists#index'

end
