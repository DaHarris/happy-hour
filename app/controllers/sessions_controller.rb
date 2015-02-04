class SessionsController < ApplicationController

  def new
  end

  # "Create" a login, aka "log the user in"
  def create
    user = User.authenticate(params[:user_name], params[:user_password])
    if user
      session[:user_id] = user.id
      redirect_to index_path, :notice => "Logged in!"
    else
      flash[:notice] =  'Login unsuccessful.'
      redirect_to log_in_path
    end
  end

  # "Delete" a login, aka "log the user out"
  def destroy
    # Remove the user id from the session
    flash[:notice] = "You have successfully logged out."
    session[:user_id] = nil
    redirect_to destroy_time_path
  end

end
