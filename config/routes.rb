Rails.application.routes.draw do
  resources :users
  get '/admin',    to: 'static_pages#admin'
  get '/employee',  to: 'static_pages#employee'
  root 'sessions#new'
  get '/login',     to:'sessions#new'
  post '/login',    to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
