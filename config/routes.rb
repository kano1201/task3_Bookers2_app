Rails.application.routes.draw do
  root to: 'homes#top'
  get 'homes' => 'homes#about'
  devise_for :users
  resources :books
  resources :users, only: [:show, :edit, :index, :update]
  end
