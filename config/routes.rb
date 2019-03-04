Rails.application.routes.draw do
  resources :item , only: [:index , :show, :destroy]

  root 'item#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
