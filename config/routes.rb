Rails.application.routes.draw do
  devise_for :users
  
  match '/events', to: 'events#preflight', via: [:options]

  namespace :api, defaults: { format: :json } do
    resources :events, only: [:create]
  end

  resources :registered_applications, except: :show
  get "read/:id", to: "registered_applications#read"

  root 'registered_applications#index'
end
