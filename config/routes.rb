Rails.application.routes.draw do


  devise_for :users
  resources :item , only: [:index , :show, :destroy]
  resources :cart_item , only: [:show, :destroy , :create , :new]

  resources :cart , only: [:index , :destroy , :create, :update]
  #resources :cart_item , only: [:show, :destroy , :create]
  resources :order, only: [:create, :show]
  resources :users, only: [:show , :index] do
    resources :avatar, only: [:new, :create]
  end


  root 'item#index'
  # get '/add_to_cart/:id', to: 'item#add_to_cart' ,as: 'add_to_cart'
  #
  # get '/delete_item/:id', to: "cart#delete_item" ,as: 'delete_item'

  namespace :admin do
    resources :item, only: [:new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
