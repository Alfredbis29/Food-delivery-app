Rails.application.routes.draw do
  # get 'homes/index'
  root 'homes#index'

  devise_for :users
  resources :foods

end
