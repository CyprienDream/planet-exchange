Rails.application.routes.draw do
  root to: 'pages#home'
  resources :categories, only: %i[new create]
  resources :activities, only: %i[new create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
