class BookingsController < ApplicationController
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

  def booking_params
    params.require(:booking).permit(:fan_id, :user_id, :start_date, :end_date, :status)
  end
end
