class Trip < ApplicationRecord
  belongs_to :route
  has_many :deliveries, dependent: :destroy
  validates :departure_time, :arrival_time, presence: true
end
