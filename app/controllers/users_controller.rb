class UsersController < ApplicationController

  def index
    
  end

  def edit_user
    @user = User.find(params[:id])
    @profile = @user.user_profile
  end

  def show
  end

  def update_user
    
   binding.pry
    Date.parse(user_params[:join_date])
    Date.parse(user_params[:dob])
    @user = User.find(current_user.id)
    @profile = @user.user_profile.update(user_params)
    redirect_to edit_user_path(current_user.id)
    #@user.user_profile.update(user_params)
  end

   private
    def user_params
      params.require(:user_profile).permit(:first_name, :last_name, :address, :city, :designation, :dob, :gender, :employee_code, :join_date, :maratial_status, :mobile_number
  )
    end

 
 end
