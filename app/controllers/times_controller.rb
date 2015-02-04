class TimesController < ApplicationController

  def new

  end

  def create
    # user = current_user
    #
    # session[:time] = Time.now
    session[:user_time] = params[:user_time]
    session[:user_date] = params[:day]
    redirect_to root_url

  end

  def destroy
    # time[:user_id] = nil
    session[:user_time] = nil
    session[:user_date] = nil
    redirect_to root_url
  end

end
