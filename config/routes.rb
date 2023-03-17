require 'devise/registrations_controller'

Rails.application.routes.draw do
  get 'passwords/new'
  get 'passwords/create'
  get 'passwords/edit'
  get 'passwords/update'
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/new'
  get 'users/create'
  get 'users/show'
  
  get '/dashboard', to: 'dashboard#index'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }, controllers: { registrations: 'registrations' }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'application#index'
end
