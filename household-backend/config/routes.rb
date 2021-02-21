Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/test', to: 'application#test'

  resources :user_tasks, :only => [:index]
  resources :subtasks, :only => [:unassigned]

end
