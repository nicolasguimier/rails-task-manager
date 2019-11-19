Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # list the tasks

  # READ
  get 'tasks', to: 'tasks#index'

  # CREATE
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  # UPDATE
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update', as: 'task'

  # READ
  get 'tasks/:id', to: 'tasks#show'

  # DELETE
  delete 'tasks/:id', to: 'tasks#destroy'
end
