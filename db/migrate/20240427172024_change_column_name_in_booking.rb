class ChangeColumnNameInBooking < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :price_per_day, :total_price
    remove_column :bookings, :fee_price
  end
end
