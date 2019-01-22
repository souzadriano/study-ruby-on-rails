Rails.application.routes.draw do
   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books do
    resources :notes, only: [:create, :destroy]
  end

  resources :sessions, only: [:new, :create, :destroy]

  root to: "books#index"

  get "/login" => "sessions#new", as: "login"
  delete "/logout" => "sessions#destroy", as: "logout"
end
