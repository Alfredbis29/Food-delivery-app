Rails.application.routes.draw do
  # get 'dashboards/index'
  root 'dashboards#index'
  resources :menu_items

  devise_for :users
  resources :foods, only: %i[index show new create destroy]

end
