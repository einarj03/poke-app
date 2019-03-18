
Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:destroy] do
    resources :pokes, only: [:new]
    resources :block, only: [:new, :create]
    resources :report, only: [:new, :create]
  end

  resources :profile_answers, only: [:edit, :update, :destroy, :index, :create]

  resources :pokes, only: [:index, :show, :create] do
    resources :messages, only: [:index, :create]
  end

end
