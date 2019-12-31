class RideRequest < ApplicationRecord
  validates :destination, presence: true
  validates :status, inclusion: { in: %w(pending accepted served rejected)}


  belongs_to :user
  belongs_to :ride
end
