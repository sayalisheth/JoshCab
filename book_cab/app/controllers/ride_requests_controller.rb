class RideRequestsController < ApplicationController
 def index
  @request = RideRequest.where(ride_id: params["ride_id"])
 end

 def new
   @ride_request = RideRequest.new
 end

 def create
    @ride_request = RideRequest.new(riderequest_parameters)
     @ride_request.ride_id = params[:ride_id]
     if @ride_request.save!
          redirect_to ride_ride_requests_path
      else
        render :new
      end
 end

def riderequest_parameters
   
    params.require(:ride_request).permit(:destination, :ride_id, :user_id)
end
 

end
