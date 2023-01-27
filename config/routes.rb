Rails.application.routes.draw do
  # get 'dashboards/index'
  root 'foods#index'
  get '/orders/new', to: 'orders#index'
  devise_for :users
  resources :foods do
    resources :orders
  end

end
