Rails.application.routes.draw do
  resources :logs
  devise_for :users
  root to: "home#index"
end
