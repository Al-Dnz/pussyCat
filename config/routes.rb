Rails.application.routes.draw do


  devise_for :users
  resources :item , only: [:index , :show, :destroy] do
    resources :cart_item , only: [:show, :destroy , :create]
  end
  resources :cart , only: [:index , :show, :destroy , :create, :update]
  #resources :cart_item , only: [:show, :destroy , :create]
  resources :order, only: [:create]


  root 'item#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
