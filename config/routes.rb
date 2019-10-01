Rails.application.routes.draw do
  resources :links
  devise_for :users
  root to: "channel#index"
  post 'message', to: 'messages#create'
end
