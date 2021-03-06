Rails.application.routes.draw do
  root 'static_welcome#home'

  get "home" => 'static_welcome#home'
  get "login" => 'sessions#new'
  post "login" => 'sessions#create'
  delete "logout" => 'sessions#destroy'

  resources :users, only: [:new, :create, :show]
  resources :events, only: [:new, :create, :show, :index]
end
