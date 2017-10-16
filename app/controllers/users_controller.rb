class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
      flash[:success] = "Thank you for registering with Mirage! We will get back to you as soon as possible!"
    else
      render 'new'
      flash[:error] = "It looks like something went wrong with your registration. Please try again"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :number, :message)
  end

end
