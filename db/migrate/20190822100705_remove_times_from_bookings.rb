class RemoveTimesFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :booking_start_date
    remove_column :bookings, :booking_end_date
  end
end
