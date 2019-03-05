Rails.application.routes.draw do

<<<<<<< HEAD
  resources :cart_item
  #get 'card/show'
  resources :cart
=======

>>>>>>> ce472e712aeb5b24ae8f607eaadeae5829ee4b41
  devise_for :users
  resources :item , only: [:index , :show, :destroy] do
    resources :cart_item , only: [:show, :destroy , :create]
  end
  resources :cart , only: [:index , :show, :destroy ,:create]
  #resources :cart_item , only: [:show, :destroy , :create]



  root 'item#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
