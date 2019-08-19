class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.float :price
      t.text :description
      t.boolean :available
      t.string :photo
      t.string :address
      t.string :city
      t.float :latitude
      t.float :longitude
      t.text :review
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
