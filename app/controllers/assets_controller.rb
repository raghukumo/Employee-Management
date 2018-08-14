class AssetsController < ApplicationController



def add_assets_info
    if current_user.user_profile.present?
      @user = current_user
      if current_user.assets.present?
        @assets = current_user.assets
      else
      authorize! :read, @users
      @assets = current_user.assets.build 
      end
    else
      authorize! :read, @user
    end
end

def create_assets
      @user = current_user
      @assets = @user.assets.create(assets_params)
      @assets.save
      redirect_to add_assets_home_index_path(current_user.id)
    end

  def update
    #binding.pry
    # @user = current_user
     assets = Asset.find(params[:asset_id])
     assets.update(asset_params) 
     redirect_to add_assets_home_index_path(current_user.id)

  end

  def destroy
    @assets = Asset.find(params[:asset_id])
    @assets.destroy
    respond_to do |format|
      format.html { redirect_to add_assets_home_index_path(current_user.id), notice: 'asset removed successfully' }
      format.json { head :no_content }
    end
   
  end

  private
    def asset_params    
      params.require(:asset).permit(:id, :issue_date, :catagory, :sr_no, :brand, :version, :os)
    end

    def assets_params    
      params.require(:assets).permit(:id, :issue_date, :catagory, :sr_no, :brand, :version, :os)
    end

end
