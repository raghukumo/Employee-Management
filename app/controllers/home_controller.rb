class HomeController < ApplicationController
  #respond_to :html, :json
  def index
    
  end

  def new
  end

  def show
  end

  def leave_configuration
    if current_user.user_profile.present?
      @leave_configs = LeaveConfiguration.all
    else
      authorize! :read, @user
    end
  end

  def add_employee
  end

  def all_users
    if current_user.user_profile.present?
      @users = User.all
    else
      authorize! :read, @user
    end
  end

  def update
    #binding.pry
    #authorize! :read, @leave_configs
    #authorize! :read, @users
    #@roles = Role.all
    if params[:id] == 'all_users'
      
      if params[:email].present?
        @email1 = User.select(:email).map(&:email)[user_params["email"].to_i-1]
        mgr_user = User.find_for_authentication(:email => @email1)
        mgrid = mgr_user.id
        email2 = params[:email] 
        update_user = User.find_for_authentication(:email => email2)
        update_user.update(manager_id: mgr_user.id)


      elsif params[:user_id].present?       
        user = User.find(params[:user_id])
        user.update(user_params)
        redirect_to all_users_home_index_path(current_user.id)
      end

    elsif params[:id] == 'leave_configuration'

      LeaveConfiguration.update(leave_config_params)  
      redirect_to leave_configuration_home_index_path(current_user.id)
      
    end
  end

  def role  
  end

  def employee_list
  end

  private
    def leave_config_params
      params.require(:leave_configuration).permit(:sick_leaves, :privilege_leaves, :work_from_home, :casual_leaves)
    end

    def user_params
      params.require(:user).permit(:email, :role_id, :manager_id)
    end
end
