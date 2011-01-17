DeviseSamples::Application.routes.draw do
  devise_for :users

  resources :users do
    member do
      put :reset_authentication_token
    end
  end

  root :to => "static#index"
end
