Rails.application.routes.draw do

  get '/article' => 'article#index', as: 'index_article'
  get '/article/new' => 'article#new', as: 'new_article'
  post '/article/new' => 'article#create', as:'create_article'
  get '/article/:id' => 'article#show', as: 'show_article'
  get '/article/:id/edit' => 'article#edit', as: 'edit_article'
  patch '/article/:id' => 'article#update', as: 'update_article'
  delete '/article/:id' => 'article#destroy', as:'delete_article'


  get '/user' => 'user#index', as: 'index_user'
  get '/user/new'=> 'user#new', as: 'new_user'
  post '/user' => 'user#create', as:'create_user'
  get '/user/:id' => 'user#show', as: 'show_user'
  get '/user/:id/edit' => 'user#edit', as: 'edit_user'
  patch '/user/:id' => 'user#update', as:'update_user'
  delete '/user/:id' => 'user#destroy' , as: 'delete_user'
  get '/login' => 'user#login', as: 'login_user'
  post '/authenticate' => 'user#auth', as:'auth_user'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
