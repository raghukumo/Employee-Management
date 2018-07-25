Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  resources :home
  root to: "home#index"

  root to: "index#leave_configuration"
  
  get "index/leave_configuration"  

 end
