class UsersController < ApplicationController

  before_action :authenticate_admin!
  before_action :authenticate_superadmin


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        flash[:success] = 'User has been updated'
        redirect_to superindex_path
      else
        flash.now[:alert] = 'User has not been updated.'
        render :edit
      end
    end

  private
  def user_params
    params.require(:user).permit(:admin_id)
  end

  def authenticate_superadmin
    unless current_admin.superadmin?
    redirect_to root_path
    end
  end

end
