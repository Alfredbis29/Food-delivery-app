Rails.application.routes.draw do
  # get 'dashboards/index'
  root 'dashboards#index'

get '/food/:id', to: 'food#show'

  devise_for :users
  resources :foods, only: %i[index show new create destroy]
end
