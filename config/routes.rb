Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'

  

  #CREATE
  get 'tasks/new', to: 'tasks#new', as: :task_new
  post 'tasks', to: 'tasks#create'


  

  get 'tasks/:id', to: 'tasks#show', as: :task

  #EDIT
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"
  
  #Delete
  delete "tasks/:id", to: "tasks#destroy", as: :delete_task

end
