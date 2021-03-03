class FansController < ApplicationController

    def new
        @fans = Fan.new
    end

    def edit
        @fans.update(fans_params)
        redirect_to fans_path(@fans)
    end

    def create
        @fans = Fan.new(fans_params)
        if @fans.save
            redirect_to root_path(@fans)
        else
            render :new
        end
    end

    private
  
    def fans_params
        params.require(:fan).permit(:name, :description)
    end


end
