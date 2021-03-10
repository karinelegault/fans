class BookingsController < ApplicationController
  def new

    @fan = Fan.find( params[:fan_id])
    @booking = Booking.new
  end

  def create

    @fan = Fan.find(params[:fan_id])
    @booking = Booking.new(booking_params)
    @booking.fan = @fan
    @booking.user_id = current_user.id
    @booking.status = "pending"
    if @booking.save
      render "bookings/show"
    else
      render "bookings/show"
    end
  end

  def incoming_bookings
    fans = Fan.where(user: current_user)
    my_bookings = fans.map { |fan| fan.bookings}
    @bookings = my_bookings.flatten

  end

  def outgoing_bookings
    @bookings = Booking.where(user_id: current_user.id)
  end



  private

  # def start_time
  #   self.my_related_model.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  # end
  def booking_params
    params.require(:booking).permit(:fan_id, :user_id, :start_date, :end_date, :status)
  end
end
