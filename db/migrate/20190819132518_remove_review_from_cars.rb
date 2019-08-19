class RemoveReviewFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :review
  end
end
