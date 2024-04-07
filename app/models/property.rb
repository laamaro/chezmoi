class Property < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :country

  # Validations
  validates :name,
            :address,
            :start_date,
            :end_date,
            :type,
            :bedroom_count,
            :bed_count,
            presence: true

  # Enums
  enum type: {
    entire_place: 0,
    room_only: 1
  }
end
