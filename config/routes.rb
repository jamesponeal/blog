Rails.application.routes.draw do

  root 'welcome#index'

  resources :users

  resources :tags

  resources :posts do
    resources :comments
  end

  get '/logout' => 'users#destroy', as: 'logout'
  post '/login' => 'users#login', as: 'login'


end
