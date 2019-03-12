Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:destroy] do
    resources :pokes, only: [:new, :create]
    resources :block, only: [:new, :create]
    resources :report, only: [:new, :create]
    resources :user_profile_questions, only: [:create]
  end

  resources :user_profile_questions, only: [:update, :destroy]

  resources :pokes, only: [:index] do
    resources :messages, only: [:index, :create]
  end
end
