class NeedsController < ApplicationController

    def index
        @needs = Need.all
    end

    def new
        @need = Need.new
    end

    def create
        @need = Need.new(need_params)
        @need.user = current_user
        if @need.save
            redirect_to need_path(@need)
        else
            render :new
        end
    end
    
    private

    def need_params
       params.require(:need).permit(:name, :note) 
    end
    
end
