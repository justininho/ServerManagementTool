Rails.application.routes.draw do
  resources :tickets
  resources :servers
  resources :systems
  resources :users
  
  
  get '/admin',    to: 'static_pages#admin'
  get '/employee',  to: 'static_pages#employee'
  root 'sessions#new'  
  
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/dashboard',  to: 'dashboard#index'
  get 'servers/index', to: 'servers#index'
  get '/approved', to: 'servers#approved'
  get '/pending', to: 'servers#pending'
<<<<<<< HEAD
  get '/create', to: 'servers#new'
  get '/ticket', to: 'tickets#new'
=======
  get '/server', to: 'server#new'
  
  get '/system', to: 'system#new'
>>>>>>> 0af6b5665b351c982abcdf479e316e668eab7d55
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
