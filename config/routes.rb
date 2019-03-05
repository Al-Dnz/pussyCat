Rails.application.routes.draw do

  resources :cart_item
  get 'card/show'
  devise_for :users
  resources :item , only: [:index , :show, :destroy]

  root 'item#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
