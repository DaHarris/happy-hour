class RatingsController < ApplicationController
  before_action :set_rating, only: [:show, :edit, :update, :destroy]


  def new
    @rating = Rating.new
    @location = Location.find(params[:location_id])
  end

  def edit
    @location = Location.find(params[:location_id])
  end

  def create
    @rating = Rating.new(user_params)
    @rating.location_id = Location.find(params[:location_id]).id
    @rating.user_name = current_user.user_name
    if @rating.save
      flash[:notice] = 'Successful Rating'
      redirect_to index_path
    else
      flash[:notice] = 'Unsuccessful Rating'
      redirect_to index_path
    end
  end

  def update
    if @rating.update(user_params)
      flash[:notice] = 'Rating was changed.'
      redirect_to index_path
    else
      flash[:notice] = 'Unsuccessful Rating'
      redirect_to index_path
    end
  end

  private

  def set_rating
    @rating = Rating.find(params[:id])
  end

  def user_params
    params.require(:rating).permit(:rating_score)
  end

end
