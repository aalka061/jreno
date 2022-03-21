Rails.application.routes.draw do
  get 'pages/homepage'
  root to: 'pages#homepage'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
