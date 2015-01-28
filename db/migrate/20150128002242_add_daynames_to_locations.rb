class AddDaynamesToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :sunday, :boolean, default: false
    add_column :locations, :monday, :boolean, default: false
    add_column :locations, :tuesday, :boolean, default: false
    add_column :locations, :wednesday, :boolean, default: false
    add_column :locations, :thursday, :boolean, default: false
    add_column :locations, :friday, :boolean, default: false
    add_column :locations, :saturday, :boolean, default: false
  end
end
