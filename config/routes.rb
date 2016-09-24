Rails.application.routes.draw do
  get 'likes/create'

  get 'likes/destroy'

  devise_for :users
  # resources :articles

  # resources :users

  get 'users/index'
  # root 'users#index'

  #usersと入力すれば、indexができる
  get '/users' => 'users#index'

  get '/users/:id' => 'users#show'

  resources :articles do
    resource :like, only: [:create, :destroy]
  end

  root 'articles#index'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
