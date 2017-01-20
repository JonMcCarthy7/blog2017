Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :blog_posts

  get 'your_posts' => 'blog_posts#your_posts'
  get 'user_posts' => 'blog_posts#user_posts'

root 'blog_posts#index'
end
