class BookingsController < ApplicationController
  def new
    @fan = Fan.find( params[:fan_id])
    @booking = Booking.new
  end

  def create
  
    @fan = Fan.find(params[:fan_id])
    @booking = Booking.new(booking_params)
    @booking.fan = @fan
    if @booking.save
      redirect_to fan_path(@fan)
    else
      render "fans/show"
    end
  end

  private
  
  # def start_time
  #   self.my_related_model.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  # end
  def booking_params
    params.require(:booking).permit(:fan_id, :user_id, :start_date, :end_date, :status)
  end
end
