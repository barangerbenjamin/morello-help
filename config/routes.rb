Rails.application.routes.draw do
  devise_for :users
  resources :needs do
    patch 'update_view_count', on: :member
    resources :services, only: [:create]
  end
  resources :services, only: [:destroy, :update] do
    patch 'confirm_reimbursement', on: :member
  end
  resources :chatrooms, only: [] do
    resources :messages, only: :create
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
