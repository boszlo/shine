Rails.application.routes.draw do
  get 'customers/index'

  devise_for :users
  resources :customers, only: [ :index ]
  get 'dashboard/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'
end
