class HomeController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  def leave_configuration
    @leave_configuration = LeaveConfiguration.all
  end

  def add_employee

  end

  def user
    @user = User.all
  end

  def employee_list

  end
end
