Rails.application.routes.draw do
  devise_for :users

  namespace :api, defaults: { format: :json } do
    resources :events, only: [:create]
  end

  match '/api/events', to: 'api/events#preflight', via: [:options]

  resources :registered_applications, except: :show
  get "read/:id", to: "registered_applications#read"

  root 'registered_applications#index'
end
