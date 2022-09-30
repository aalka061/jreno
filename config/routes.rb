Rails.application.routes.draw do
  resources :pictures
  devise_scope :user do
    get "/sign_in" => "devise/sessions#new" # custom path to login/sign_in
    get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
  end
  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
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
  get 'pages/dashboard'
  get 'pages/about'
  root to: 'pages#homepage'
  resources :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
