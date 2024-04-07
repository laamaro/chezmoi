class AddColumnsToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :name, :string
    add_column :properties, :description, :string
    add_column :properties, :address, :string
    add_column :properties, :latitude, :float
    add_column :properties, :longitude, :float
    add_column :properties, :start_date, :date
    add_column :properties, :end_date, :date
    add_column :properties, :type, :integer
    add_column :properties, :bedroom_count, :integer
    add_column :properties, :bed_count, :integer
    add_column :properties, :smoking, :boolean
    add_column :properties, :pet, :boolean
    add_column :properties, :wifi, :boolean
    add_column :properties, :minimum_stay, :integer
    add_column :properties, :maximum_guests, :integer
    add_reference :properties, :user, null: false, foreign_key: true
  end
end
