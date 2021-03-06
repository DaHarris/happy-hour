class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  helper_method :user_time
  helper_method :user_date

  #private

  # Finds the User with the ID stored in the session with the key
  # :current_user_id This is a common way to handle user login in
  # a Rails application; logging in sets the session value and
  # logging out removes it.
  def current_user
    @current_user ||= session[:user_id] && User.find(session[:user_id]) if session[:user_id]
  end

  def user_time
    @user_time = session[:user_time] if session[:user_time] != nil
  end

  def user_date
    @user_date = session[:user_date] if session[:user_date] != nil
  end
end
