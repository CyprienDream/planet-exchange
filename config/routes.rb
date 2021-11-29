Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    resources :users, only: %i[show]
    get '/users/:id/chatrooms', to: 'users#chatrooms'
  end

  root to: 'pages#home'

  get '/search', to: 'pages#search'

  resources :categories, only: %i[new create index show]
  resources :activities, only: %i[new create show]
  resources :storages, only: %i[show new create]
  resources :items, only: %i[index new create]
  resources :item_storages, only: %i[edit update]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
end
