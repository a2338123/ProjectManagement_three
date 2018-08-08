Rails.application.routes.draw do

  get '/home',     to: 'static_pages#home'

  get '/customer',  to: 'static_pages#customer'

  get '/cloudservice', to: 'static_pages#cloudservice'
 
  get '/customerservice',to: 'static_pages#customerservice'

  get '/project',  to: 'static_pages#project'

  root 'sessions#new'

  post '/login',  to: 'sessions#create'
  
  get '/login',   to: 'sessions#new'

  get 'users/new'
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
