Rails.application.routes.draw do
  resources :logs
  devise_for :users,
             path: '',
             path_names: {
               sign_in: 'login',
               sign_out: 'logout',
               registration: 'signup'
             },
             controllers: {
               sessions: 'sessions',
               registrations: 'registrations'
             }
  root to: "home#index"

  resources :users do
    resource :logs
  end
end
