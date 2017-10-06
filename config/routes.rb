Rails.application.routes.draw do
  get 'home/index'

  resources :tasks
  devise_for :users
  root 'pages#home'

  get 'about' => 'pages#about'

  get 'tasks' => 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
