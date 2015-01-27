class Location < ActiveRecord::Base


  def gmaps4rails_address
    address
  end

end
