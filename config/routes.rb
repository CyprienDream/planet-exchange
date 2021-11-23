Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :categories, only: %i[new create index show]
  resources :activities, only: %i[new create show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:index, :new, :create]

end
