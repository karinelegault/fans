class FansController < ApplicationController
  def show
    @fans = Fans.find(params[:id])
    @booking = Booking.new
  end

  private

  def fans_params
    params.require(:fans).permit(:name, :description, :price, :user_id, :photo)
  end

end
