class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.float :latitude
      t.boolean :gmaps
      t.float :hstart
      t.float :hend
      t.string :hmenu
      t.float :hrating
      t.string :number

      t.timestamps null: false
    end
  end
end
