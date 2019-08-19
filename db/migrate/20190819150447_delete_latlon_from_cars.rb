class DeleteLatlonFromCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :latitude
    remove_column :cars, :longitude
  end
end
