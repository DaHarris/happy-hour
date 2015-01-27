class AddDaysToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :days, :string
  end
end
