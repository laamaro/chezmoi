class Property < ApplicationRecord
  # Associations
  belongs_to :user

  # Validations
  validates :name,
            :address,
            :start_date,
            :end_date,
            :type,
            :bedroom_count,
            :bed_count,
            presence: true
end
