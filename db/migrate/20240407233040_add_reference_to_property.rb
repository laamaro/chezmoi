class AddReferenceToProperty < ActiveRecord::Migration[7.0]
  def change
    add_reference :properties, :country, null: false, foreign_key: true
  end
end
