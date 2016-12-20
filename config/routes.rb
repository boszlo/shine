Rails.application.routes.draw do

  devise_for :users
  resources :customers, only: [ :index ]
  get "angular_test", to: "angular_test#index"
  get 'customers/index'
  get 'dashboard/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
end
