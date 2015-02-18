class PickupsController < ApplicationController
  def index
    @pickups = Pickup.all
  end

  def create
    @pickup = current_user.pickups.build(pickup_parameters)
     if @pickup.save
       redirect_to users_path(current_user)
     else 
       render :new
     end    
   end

  def edit
    @pickup = Pickup.find(params[:id])   
   end

   def update
    @pickup = Pickup.find(params[:id])

     if @pickup.update_attributes(pickup_parameters)
       redirect_to users_path
     else
       render "edit"
     end
   end


  private
  def pickup_parameters
    params.require(:pickup).permit(:address, :bins, :material, :date)
  end
 

end
