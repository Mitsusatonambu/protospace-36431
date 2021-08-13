class UsersController < ApplicationController
  def show
    #@user = User.new(user_params)
    @user = User.find(params[:id])
  end

  #private
  #def user_params
    #params.require(:user).permit(:name, :profile, :occupation, :position)
  #end
end
