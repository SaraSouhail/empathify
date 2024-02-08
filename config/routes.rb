Rails.application.routes.draw do
  get 'appointements/index'
  get 'appointements/show'
  get 'appointements/new'
  get 'appointements/create'
  get 'appointements/edit'
  get 'appointements/update'
  get 'doctors/index'
  get 'doctors/show'
  get 'messages/create'
  get 'chatrooms/show'
  devise_for :users
  root to: "pages#home"
  get 'about', to: 'pages#about', as: :about
  resources :chatrooms, only: [:index, :show, :new, :create] do
    resources :messages, only: :create
  end
  resources :doctors, only: [:index, :show] do
    resources :appointements, only: [:index, :show, :new, :create]
  end
  resources :appointements, only: [:destroy]
end
