class AddTitleToCars < ActiveRecord::Migration[5.2]
  def change
    add_column :cars, :title, :string
  end
end
