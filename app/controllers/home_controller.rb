class HomeController < ApplicationController
  #respond_to :html, :json
  def index
  end

  def new
  end

  def show
  end

  def leave_configuration
    @leave_configs = LeaveConfiguration.all
  end

  def add_employee
  end

  def all_users
    @users = User.all
    authorize! :read, @users
  end

  def update
    authorize! :read, @leave_configs
    @roles = Role.all
    if params[:id] == 'user'
      user = User.find(params[:user_id])
      user.update(user_params)
    elsif params[:id] == 'leave_configuration'
      LeaveConfiguration.update(leave_config_params)  
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
