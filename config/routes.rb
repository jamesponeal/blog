Rails.application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'
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
  get '/projects/home' => 'projects#home', as: 'home'
  get '/projects/active_record' => 'projects#active_record', as: 'active_record'
  get '/projects/sql' => 'projects#sql_reference', as: 'sql'

end
