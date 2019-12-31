class Ride < ApplicationRecord
  #validates :date, :time, :location, presence: true


  has_many :ride_requests
  belongs_to :driver
  belongs_to :cab

  def driver_name

  end


end



