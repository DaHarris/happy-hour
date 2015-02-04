class ChangeHendToTime < ActiveRecord::Migration
  def up
    remove_column :locations, :hend
    remove_column :locations, :hstart
    add_column :locations, :hend, :time
    add_column :locations, :hstart, :time
  end
end
