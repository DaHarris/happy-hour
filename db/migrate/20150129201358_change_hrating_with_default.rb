class ChangeHratingWithDefault < ActiveRecord::Migration
  def change
    change_column :locations, :hrating, :float, :default => 0.0

  end
end
