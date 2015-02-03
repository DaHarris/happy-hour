class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :location_id
      t.string :user_name
      t.integer :rating_score

      t.timestamps null: false
    end
  end
end
