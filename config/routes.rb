Rails.application.routes.draw do
  resources :pictures
  devise_for :users
  resources :works
  resources :services do
    resources :works
  end
  get 'pages/homepage'
  get 'pages/contactpage'
  get 'pages/construction'
  get 'pages/renovation'
  get 'pages/maintenance'
  get 'pages/services'
  get 'pages/projects'
  root to: 'pages#homepage'
  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
