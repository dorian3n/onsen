Rails.application.routes.draw do
  
  get 'follows/create'
  get 'follows/destroy'
  get 'comments/create'
  get 'comments/destroy'
  get 'comments/update'
  get 'bookmarks/index'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  get 'prefectures/new'
  get 'prefectures/index'
  get 'hot_springs/new'
  get 'hot_springs/show'
  get 'hot_springs/index'
  get 'hot_springs/edit'
  get 'hot_springs/destroy'
  get 'hot_springs/update'
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "hot_springs#index"

  resources :users, only: [:show, :index, :edit, :update, :destroy] do
    resources :follows, only: [:create, :destroy]
  end

  resources :hot_springs do
    resources :bookmarks, only: [:index, :create, :destroy]
    resources :comments, only: [:create, :destroy, :update]
  end

  resources :prefectures, only: [:new, :index]

end

  

