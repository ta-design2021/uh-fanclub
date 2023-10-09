Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  # マイページに遷移するルート
  root "users#show"
end
