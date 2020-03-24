Rails.application.routes.draw do
  root 'posts#index'

  resources :categories
  resources :posts

  get '/article', 	to: 'posts#article'
  # get '/dashboard', to: 'users#dashboard', as: :admin_dashboard

  put 'new_post_section/:id', to: 'posts#new_post_section', as: :new_post_section
end