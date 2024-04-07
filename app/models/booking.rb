class Booking < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :property

  # Validations
  validates :start_date, :end_date, presence: true
end
