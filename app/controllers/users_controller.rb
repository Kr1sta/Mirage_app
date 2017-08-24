class UsersController < ApplicationController

  def new
    @user = User.new(user_params)
  end

  private

  def user_params
    params.permit(:name, :email, :number, :message)
  end

end
