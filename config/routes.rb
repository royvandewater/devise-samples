DeviseSamples::Application.routes.draw do
  devise_for :users

  resources :users

  root :to => "static#index"
end
