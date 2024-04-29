class Booking < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :property

  # Validations
  validates :start_date, :end_date, presence: true

  def total_days
    (end_date - start_date).to_i
  end
end
