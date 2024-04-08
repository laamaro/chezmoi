class Property < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :country

  # Validations
  validates :name,
            :address,
            :start_date,
            :end_date,
            :property_type,
            :bedroom_count,
            :bed_count,
            presence: true

  # Enums
  enum property_type: {
    entire_place: 0,
    room_only: 1
  }
end
