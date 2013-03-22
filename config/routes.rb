TodolistApp::Application.routes.draw do
  resources :users

  resources :tasks
  resources :lists

  root :to => 'lists#index'

end
