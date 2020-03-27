Rails.application.routes.draw do
  root 'posts#index'

  resources :categories
  resources :creators
  resources :posts do
  	resources :sections
  end
  put 'add_post_section/:id', to: 'posts#add_post_section', as: :add_post_section

end