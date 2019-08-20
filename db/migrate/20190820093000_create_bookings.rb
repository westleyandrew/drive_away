class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :car, foreign_key: true
      t.date :booking_start_date
      t.date :booking_end_date
      t.timestamps
    end
  end
end
