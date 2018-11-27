Rails.application.routes.draw do
  resources :modifications
  resources :servers
  resources :users
  
  get '/modification', to: 'modifications#new'
  
  get '/admin',    to: 'static_pages#admin'
  get '/employee',  to: 'static_pages#employee'
  root 'sessions#new'  
  
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/dashboard',  to: 'dashboard#index'
  get '/requests', to: 'requests#edit'
  get 'servers/index', to: 'servers#index'
  get '/approved', to: 'servers#approved'
  get '/pending', to: 'servers#pending'
  get '/server', to: 'server#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
