Rails.application.routes.draw do
  root 'courses#index'
  get 'greeter/goodbye'
  #get 'greeter/hello'
  get 'greeter/hello' => "greeter#hello"
  #                       controller#action
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
