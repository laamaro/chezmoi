class AddExtraFieldsToProperty < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :children, :boolean
    add_column :properties, :elevator, :boolean
    add_column :properties, :smoke_detector, :boolean
    add_column :properties, :parking, :boolean
    add_column :properties, :check_in, :time
    add_column :properties, :check_out, :time
    add_column :properties, :price_per_night, :float
    add_column :properties, :maximum_stay, :integer
    add_column :properties, :fee_price, :float
  end
end
