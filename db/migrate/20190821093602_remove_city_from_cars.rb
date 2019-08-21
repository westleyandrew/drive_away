class RemoveCityFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :city
  end
end
