class AddRatingsToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :ratings, :integer
  end
end
