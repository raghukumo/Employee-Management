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
      get 'assets/:id' => 'assets#add_assets_info', as: :add_assets
      put 'assets/:id' => 'assets#update'    
      delete 'assets/:id' => 'assets#destroy'
      post 'create_assets' => 'assets#create_assets'  
      
    end
  end

  get 'edit_user/:id' =>'users#edit_user', as: :edit_user
  put 'update_user' => 'users#update_user'    
  
end
