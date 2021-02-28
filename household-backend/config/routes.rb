Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :user_tasks
  resources :subtasks, :only => [:index]
  resources :users,  :only => [:index]


end
