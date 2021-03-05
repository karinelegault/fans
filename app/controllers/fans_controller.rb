class FansController < ApplicationController

    def index
        @fans = Fan.all
    end
    
  def show
    @fan = Fan.find(params[:id])
    @booking = Booking.new
  end

  private

  def fans_params
    params.require(:fans).permit(:name, :description, :price, :user_id, :photo)
  end

end
