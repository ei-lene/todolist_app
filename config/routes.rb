TodolistApp::Application.routes.draw do
  resources :tasks
  resources :lists
  resources :people

  root :to => 'lists#index'

end
