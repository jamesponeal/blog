Rails.application.routes.draw do

  root 'welcome#index'

  resources :users

  resources :tags

  resources :posts do
    resources :comments
  end

  get '/users/:user_id/posts' => 'posts#author_index', as: 'author_index'

  get '/logout' => 'users#destroy', as: 'logout'
  post '/login' => 'users#login', as: 'login'

  get '/welcome/resume' => 'welcome#resume', as: 'resume'
  get '/welcome/about' => 'welcome#about', as: 'about'

end
