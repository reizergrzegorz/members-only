Rails.application.routes.draw do
  
  root "posts#index"
  
  devise_scope :user do
    get "users/sign_out" => "users/sessions#destroy"
  end

  devise_for :users
  resources :posts, only: [:new, :create, :index]

end

