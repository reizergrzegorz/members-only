Rails.application.routes.draw do
  
  root "posts#index"
  devise_for :users
  resources :posts, only: [:new, :create, :index]

end

