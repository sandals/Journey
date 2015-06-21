Rails.application.routes.draw do
  root 'landing#index', via: :get

  get 'timeline', to: 'timeline#index'

  resources :posts
  resources :text_posts
  resources :image_posts
end
