class Delivery < ApplicationRecord
  belongs_to :trip
  validates :delivery_type, :recipient, :address, :status, presence: true
end
