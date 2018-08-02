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

  def user
    @user = User.all
  end

  def update
    LeaveConfiguration.update(leave_config_params)
   # respond_with @leave_configs

  end

  def employee_list

  end

  private
    def leave_config_params
      params.require(:leave_configuration).permit(:sick_leaves, :privilege_leaves, :work_from_home, :casual_leaves)
    end

end
