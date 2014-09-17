Rails.application.routes.draw do
  root 'users#show'

  # Avoiding route conflicts with users through this path_prefix
  devise_for :users, :path_prefix => 'app'
  resources :users do
    resources :memos
  end
end
