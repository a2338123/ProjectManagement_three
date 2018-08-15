Rails.application.routes.draw do

  resources :projects

  resources :customerservers

  resources :cloudservices

  resources :customers

  resources :users

  get '/home',     to: 'static_pages#home'

  get '/customers',   to: 'customers#new'

  get '/cloudservices', to: 'cloudservices#new'
 
  get '/customerservices',to: 'customerservices#new'

  get '/project',  to: 'projects#new'

  root 'sessions#new'

  post '/login',  to: 'sessions#create'
  
  get '/login',   to: 'sessions#new'

  delete '/logout',   to: 'sessions#destroy'

  get 'users/new'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
