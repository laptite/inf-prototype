Rails.application.routes.draw do
  devise_for :admins
  root 'posts#index'

  get '/admin', to: 'admins#index', as: :admin_dashboard

  resources :categories
  resources :contributors
  resources :posts do
  	resources :sections
  end
end