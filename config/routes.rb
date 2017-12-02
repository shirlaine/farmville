Rails.application.routes.draw do
  devise_for :users
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get '/superindex', to: 'pages#superindex'
  resources :pages, only: [:index]
  resources :admin do
    put 'supertrue', on: :member, to: 'pages#supertrue'
    put 'superfalse', on: :member, to: 'pages#superfalse'
  end

  get 'apis/retrieve', to: 'apis#retrieve'
  get 'apis/facebook', to: 'apis#facebook'

end
