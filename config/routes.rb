Rails.application.routes.draw do
  get '/' => 'tasks#index'
  post 'tasks/create' => 'tasks#create'
  delete 'tasks/:id/destroy' => 'tasks#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
