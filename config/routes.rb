Rails.application.routes.draw do
  resources :daties
  resources :links
  devise_for :users
  root to: "channel#index"
  post 'message', to: 'messages#create'
  get 'messages', to: 'messages#index'
end
