Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    resources :users, only: %i[show edit]
    get '/users/:id/chatrooms', to: 'users#chatrooms', as: :user_chatrooms
  end

  root to: 'pages#home'

  get '/search', to: 'pages#search'
  get '/dashboard', to: 'pages#dashboard'

  resources :categories, only: %i[new create index show]
  resources :activities, only: %i[new create show]
  resources :storages, only: %i[show new create]
  resources :items, only: %i[index new create]
  resources :item_storages, only: %i[edit update]
  resources :chatrooms, only: %i[show create] do
    resources :messages, only: :create
  end
end
