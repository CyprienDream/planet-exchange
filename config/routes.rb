Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get '/search', to: 'pages#search'

  resources :categories, only: %i[new create index show]
  resources :activities, only: %i[new create show]
  resources :storages, only: %i[show new create]
  resources :items, only: %i[index new create]
  resources :item_storages, only: %i[edit update]
end
