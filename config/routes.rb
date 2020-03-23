Rails.application.routes.draw do
  root 'posts#index'

  resources :categories
  resources :posts

  get '/article', to: 'posts#article'

  put 'new_post_section/:id', to: 'posts#new_post_section', as: :new_post_section
end