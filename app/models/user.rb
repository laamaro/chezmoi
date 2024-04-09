class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  has_many :properties, dependent: :destroy
  has_one_attached :photo

  # Validations
  validates :first_name, :last_name, :user_type, presence: true

  # Enums
  enum user_type: {
    landlord: 0,
    guest: 1
  }
end
