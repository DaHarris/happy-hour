class WelcomeController < ApplicationController

  def index
    @days = [[0, 'sunday'], [1, 'monday'], [2, 'tuesday'], [3, 'wednesday'],
            [4, 'thursday'], [5, 'friday'], [6, 'saturday']]

    @time = Time.new

    

  end
end
