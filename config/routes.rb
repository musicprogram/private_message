Rails.application.routes.draw do
  devise_for :users
  root 'main#index'
  resources :conversations, only: [:index, :create] do
  	resources :messages, only: [:index, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
