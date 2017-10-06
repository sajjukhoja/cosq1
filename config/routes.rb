Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'

  resources :tasks
  devise_for :users
  devise_for :spaces
  
  root 'pages#home'

  get 'about' => 'pages#about'

  get 'tasks' => 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
