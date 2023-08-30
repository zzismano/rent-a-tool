class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])
    @user = current_user
    @user_tools = @user.tools
  end
end
