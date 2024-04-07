class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true, null: false
      t.references :property, foreign_key: true, null: false
      t.date :start_date
      t.date :end_date
      t.float :price_per_day
      t.float :fee_price

      t.timestamps
    end
  end
end
