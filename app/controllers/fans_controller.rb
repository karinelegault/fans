class FansController < ApplicationController


    def new
        @fan = Fan.new
    end
# No need for edit right now, therefore  I comment it out (paslm)
    # def edit
    #     # raise
    #     @fan.update(params[:id])
    #     redirect_to fans_path(@fans)
    # end

    def create
        @fan = Fan.new(fans_params)
        @fan.user = current_user
        if @fan.save
            redirect_to fan_path(@fan)
        else
            render :new
        end
    end


     def index
        @fans = Fan.all
    end


  def show
    @fan = Fan.find(params[:id])
    @booking = Booking.new
  end


  def destroy
    @fan = Fan.find(params[:id])
    @fan.destroy
  end

  private

  def fans_params
    params.require(:fan).permit(:name, :description, :price, :user_id)
  end

end
