Rails.application.routes.draw do
  devise_for :users, controllers: {:registrations => "registrations"}
  scope "/admin" do
    resources :users, only: [:edit, :update]
  end
  devise_for :admins, controllers: {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  get '/superindex', to: 'pages#superindex'
  resources :pages, only: [:index]
  resources :admin do
    put 'supertrue', on: :member, to: 'pages#supertrue'
    put 'superfalse', on: :member, to: 'pages#superfalse'
  end

end
