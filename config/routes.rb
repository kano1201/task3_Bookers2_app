Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes' => 'homes#about'
  post 'books' => 'books#create'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  devise_for :users
  resources :books
  resources :users, only: [:show, :edit, :index, :update]
  end