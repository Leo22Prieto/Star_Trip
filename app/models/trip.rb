class Trip < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :company

  validates :destination, :arrival_date, :departure_date, :number_of_passengers, :description, :price, presence: true
  # validates :departure_date, comparison: { greater_than: :arrival_date }
end
