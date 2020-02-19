class RemoveContactFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :contact, :integer
  end
end
