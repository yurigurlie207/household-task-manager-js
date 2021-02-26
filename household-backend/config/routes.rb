Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/test', to: 'application#test'
  get '*other', to: 'static#index'

  resources :user_tasks, :only => [:index]
  resources :subtasks, :only => [:index]
  # resources :tasks, :only => [:index]

  # root 'static#home', as: 'home'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]

  # resources :user

end
