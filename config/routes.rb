DeviseSamples::Application.routes.draw do
  devise_for :users
  devise_for :employees

  resources :users
  resources :employees

  root :to => "static#index"
end
