class RidesController < ApplicationController
  def index
    @count = Ride.count
    @all = Ride.all
     
  end 

  def new
      @ride = Ride.new
  end

  def create
  @ride = Ride.new(ride_parameters)
     if @ride.save!
          redirect_to rides_path
      else
        render :new
      end
  end

  def edit
   
  end


  def ride_parameters
    params.require(:ride).permit(:date, :time, :location, :cab_id, :driver_id)
  end
end
