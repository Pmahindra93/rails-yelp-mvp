class RemoveRatingsFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :reviews, :integer
  end
end
