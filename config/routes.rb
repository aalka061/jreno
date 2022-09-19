Rails.application.routes.draw do
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
  root to: 'pages#homepage'
  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
