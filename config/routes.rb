DeviseSamples::Application.routes.draw do
  resources :users

  root :to => "static#index"
end
