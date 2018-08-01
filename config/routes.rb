Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  root to: "home#index"
  #get 'home/index'

  resources :home do 
    collection do
      get 'index'
      get 'leave_configuration' 
      get 'user'
      get 'add_employee'
      get 'employee_list'
    end
  end
 end
