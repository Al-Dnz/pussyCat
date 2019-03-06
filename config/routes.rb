Rails.application.routes.draw do


  devise_for :users
  resources :item , only: [:index , :show, :destroy]
  resources :cart_item , only: [:show, :destroy , :create]

  resources :cart , only: [:index , :destroy , :create, :update]
  #resources :cart_item , only: [:show, :destroy , :create]
  resources :order, only: [:create]


  root 'item#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
