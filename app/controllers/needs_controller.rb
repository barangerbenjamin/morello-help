class NeedsController < ApplicationController
    before_action :set_need, only: [:show]
    def index
        @needs = Need.all
    end

    def show; end

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

    def set_need
        @need = Need.find(params[:id])
    end

    def need_params
       params.require(:need).permit(:name, :note) 
    end
    
end
