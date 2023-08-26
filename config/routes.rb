Rails.application.routes.draw do
  root to: 'homes#index'
  resources :users 
  get 'sign_in', to: 'users#sign_in', as: 'sign_in'
  get 'sign_out', to: 'users#sign_out', as: 'sign_out'
end
