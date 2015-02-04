class Location < ActiveRecord::Base
  has_many :ratings


  def gmaps4rails_address
    address
  end

  #converts the rating to a string for referencing icons
  #in application.js for the google maps marker
  #by using average of ratings for location
  def convert()
    if self.ratings == nil
      'icons.unrated.icon'
    end
    total = self.ratings.map{|x| x}
    rating_array = []
    total.each do |x|
      rating_array << x.rating_score
    end
    average = rating_array.inject{ |sum, el| sum + el }.to_f / rating_array.size

    if average < 3
      'icons.bad.icon'
    elsif average < 4
      'icons.average.icon'
    elsif average <= 5
      'icons.great.icon'
    else
      'icons.unrated.icon'
    end
  end


end
