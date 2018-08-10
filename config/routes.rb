Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }
  root to: "home#index"
  #get 'home/index'

  resources :home do 
    collection do
      get 'index'
      get 'leave_configuration' 
      get 'all_users'
      get 'add_employee'
      get 'employee_list'
    end
  end

  get 'edit_user/:id' =>'users#edit_user', as: :edit_user
  put 'update_user' => 'users#update_user'    
end
