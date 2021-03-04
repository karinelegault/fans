class FansController < ApplicationController
    def index
        @fans = Fan.all
    end
    
end
