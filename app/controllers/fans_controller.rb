class FansController < ApplicationController


    def new
        @fan = Fan.new
    end
    def create
        @fan = Fan.new(fans_params)
        @fan.user = current_user
        if @fan.save
            redirect_to fan_path(@fan)
        else
            render :new
        end
    end

    def edit
      @fan = Fan.find(params[:id])
  end
  def update
      @fan = Fan.find(params[:id])
      @fan.update(fans_params)
      redirect_to fan_path(@fan)
  end
    def my_fans
      @fans = Fan.where(user_id: current_user.id)
    end

     def index
      
      if params[:query].present?
        @fans = Fan.search_by_name(params[:query])
      else
        @fans = Fan.all
      end
    end


  def show
    @fan = Fan.find(params[:id])
    # @booking = Booking.new
  end


  def destroy
    @fan = Fan.find(params[:id])
    @fan.destroy
  end

  def my_fans
    @fans = Fan.where(user_id: current_user.id)
  end

  private

  def fans_params
    params.require(:fan).permit(:name, :description, :price, :user_id, :photo)
  end

end
