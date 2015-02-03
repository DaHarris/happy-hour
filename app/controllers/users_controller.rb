class UsersController < ApplicationController

  def register
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    @user.encrypt_password

    if @user.save
      flash[:notice] = 'User was successfully created.'
      redirect_to index_path
    else
      render 'register'
    end

    @user.clear_password

  end

  def user_params
    params.require(:user).permit(:user_name, :user_password)
  end

end
