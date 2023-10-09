Rails.application.routes.draw do
  devise_for :users
  # マイページに遷移するルート
  root "users#show"
end
