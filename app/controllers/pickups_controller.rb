class PickupsController < ApplicationController

before_action :admin, only: [:index]

  def index
    @pickups = Pickup.all
    @pending_pickups = Pickup.where(completed: false)
    @completed_pickups = Pickup.where(completed: true)
  end

  def create
    # pickup_parameters[:date] = Date.strptime(pickup_parameters[:date],
    #                                             '%m/%d/%Y')
    @pickup = current_user.pickups.build(pickup_parameters)
     if @pickup.save
       redirect_to user_path(current_user)
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

   def complete
     params[:pickups_check_box].each do |check|
       pickup_id = check
     t = Pickup.find_by_id(pickup_id)
         t.update_attribute(:completed, true)
     end
    redirect_to :action => 'index'

   end  


  private
  def pickup_parameters
    params.require(:pickup).permit(:address, :bins, :material, :date)
  end
 

end
