Rails.application.routes.draw do
  devise_for :users

  resources :registered_applications, except: :show
  get "read/:id", to: "registered_applications#read"

  root 'welcome#index'
end
