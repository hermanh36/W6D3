Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:index,:create,:show,:update,:destroy] do
    resources :artworks, only:[:index]
  end
  resources :artworks, only:[:index,:create,:show,:update,:destroy]
  resources :artwork_shares, only:[:index,:create,:destroy]
  resources :comments, only:[:create,:destroy]
  get 'comments/:user_id', to: 'comments#index'
  get 'comments/:artist_id', to: 'comments#index'
  # get 'users/', to: 'users#index', as: 'user'
  # post 'users/', to: 'users#create', as: 'user_create'
  # get 'users/new', to: 'users#new', as: 'user_new'
  # get 'users/:id/edit', to: 'users#edit', as: 'user_edit'
  # get 'users/:id', to: 'users#show', as: 'user_show'
  # patch 'users/:id', to: 'users#update', as: 'user_update'
  # put 'users/:id', to: 'users#update', as: 'user_update_put'
  # delete 'users/:id', to: 'users#destroy', as: 'user_deletegi'
end
