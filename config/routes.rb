Rails.application.routes.draw do
  

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
    resource :bookmarks, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy, :update]
  end
  resources :bookmarks, only: [:index]

  resources :prefectures, only: [:new, :index]

end

  

