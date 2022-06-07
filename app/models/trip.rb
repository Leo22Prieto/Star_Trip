class Trip < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :company, optional: true

  validates :destination, :arrival_date, :departure_date, :number_of_passengers, :description, :price, :url_image, presence: true
  # validates :departure_date, comparison: { greater_than: :arrival_date }
end
