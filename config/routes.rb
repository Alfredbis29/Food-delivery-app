Rails.application.routes.draw do
  # get 'dashboards/index'
  root 'dashboards#index'
  resources :orders

  devise_for :user
  resources :foods, only: %i[index show new create destroy]

end
