class AddHcounterToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :hcounter, :integer
  end
end
