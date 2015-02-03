class ChangeRatingScoreToFloat < ActiveRecord::Migration
  def change
    change_column :ratings, :rating_score, :float
  end
end
