Rails.application.routes.draw do
  devise_for :users
  resources :needs do
    patch 'update_view_count', on: :member
    resources :services, only: [:new, :create]
  end
  resources :services, only: [:destroy]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
