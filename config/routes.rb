Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  resources :games, only: [:index, :show]
end
