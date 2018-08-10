class UsersController < ApplicationController
  #load_and_authorize_resource
  def index
    
  end

  def edit_user
    
    @user = User.find(params[:id])
    if current_user.user_profile.present?
      @profile = current_user.user_profile
    else
      #authorize! :read, @users
      @profile = current_user.build_user_profile
    end
  end

  def show
  end

  def update_user
    Date.parse(user_params[:join_date]) if user_params[:join_date].present?
    Date.parse(user_params[:dob]) if user_params[:dob].present?
    if current_user.user_profile.present?
      profile = current_user.user_profile
    else
      profile = current_user.build_user_profile
    end
    profile.update(user_params)
    flash[:notice] = "Updated Successfully"  
    redirect_to edit_user_path(current_user.id)
    #@user.user_profile.update(user_params)
  end

   private
    def user_params
      params.require(:user_profile).permit(:first_name, :last_name, :address, :city, :designation, :dob, :gender, :employee_code, :join_date, :maratial_status, :mobile_number
  )
    end

 
 end
