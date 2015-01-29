class AddDefaultValueToHcounterAttribute < ActiveRecord::Migration
  def change
    change_column :locations, :hcounter, :integer, :default => 0
  end
end
