Rails.application.routes.draw do
  root 'memos#index'
  resources :memos

  devise_for :users

end
