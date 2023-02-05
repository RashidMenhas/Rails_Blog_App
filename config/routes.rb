Rails.application.routes.draw do
  
  root "users#index"

  get '/posts/new', to: 'posts#new', as: 'create_post'
  post '/posts/new', to: 'posts#create'
  get '/users/:user_id/posts/:id', to: 'posts#show', as: 'post'
  post '/users/:user_id/posts/:id/', to: 'posts#create_comment'
  post '/users/:user_id/posts/:id/likes', to: 'posts#create_like', as: 'like'

  resources :users, only: [:index, :show] do 
    resources :posts, only: [:index, :show]
  end
end
