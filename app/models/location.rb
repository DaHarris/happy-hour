class Location < ActiveRecord::Base


  def gmaps4rails_address
    address
  end

  #converts the rating to a string for referencing icons
  #in application.js for the google maps marker
  def convert()
    if hrating != nil
      if hrating == 0
        'icons.unrated.icon'
      elsif hrating < 3.5
        'icons.bad.icon'
      elsif hrating < 4.25
        'icons.average.icon'
      else
        'icons.great.icon'
      end
    end
  end


end
