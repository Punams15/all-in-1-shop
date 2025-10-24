Rails.application.routes.draw do
  # ✅ Custom Devise paths
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'signup'
  }

  # ✅ Homepage
  root "home#index"

  # ✅ Product routes
  resources :products

  # ✅ User routes
  resources :users, only: [:index]

  # ✅ Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # ✅ Optional fallback for React Router
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
