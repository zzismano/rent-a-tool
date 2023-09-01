class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])
    @user = User.find(params[:id])
    @user_tools = @user.tools
  end
end
