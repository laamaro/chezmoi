class Booking < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :property

  # Validations
  validates :start_date, :end_date, presence: true

  # Virtual Attribute
  attr_accessor :date_range

  def separate_dates
    dates = date_range.split(" to ")
    self.start_date = Date.strptime(dates[0], "%d/%m/%Y")
    self.end_date = Date.strptime(dates[1], "%d/%m/%Y")
  end

  def total_days
    (end_date - start_date).to_i
  end
end
