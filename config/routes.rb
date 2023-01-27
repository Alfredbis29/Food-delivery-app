Rails.application.routes.draw do
  # get 'dashboards/index'
  root 'foods#index'

  devise_for :users
  resources :foods do
    resources :orders
  end

end
