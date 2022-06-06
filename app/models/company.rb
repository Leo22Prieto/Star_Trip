class Company < ApplicationRecord
  has_many :trips
  has_many :bookings, through: :trips

  validates :name, :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :email, uniqueness: true
  validates :rating, inclusion: { in: (0..5) }, numericality: { only_integer: true }
end
