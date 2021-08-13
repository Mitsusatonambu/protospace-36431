class UsersController < ApplicationController
  def show
    #@user = User.new(user_params)
    @user = current_user
    @prototypes = current_user.prototypes
  end

  #private
  #def user_params
    #params.require(:user).permit(:name, :profile, :occupation, :position)
  #end
end
