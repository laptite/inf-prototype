Rails.application.routes.draw do
  devise_for :admins
  
  get '/admin', to: 'admins#index', as: :admin_dashboard
  root 'posts#index'

  resources :categories
  resources :contributors
  resources :posts do
  	resources :sections
  end
  put 'add_post_section/:id', to: 'posts#add_post_section', as: :add_post_section

end