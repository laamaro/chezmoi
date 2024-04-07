class Country < ApplicationRecord
  # Associations
  has_many :properties, dependent: :destroy

  # Validations
  validates :name, uniqueness: true
end
