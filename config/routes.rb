Rails.application.routes.draw do
  root 'users#show'

  # Avoiding route conflicts with users through this path_prefix
  devise_for :users, path_prefix: 'app'
  resource :user, except: :new do
    resources :memos
  end
end
