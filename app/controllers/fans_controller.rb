class FansController < ApplicationController

    def new
        @fan = Fan.new
    end

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

    private
  
    def fans_params
        params.require(:fan).permit(:name, :description)
    end


end
