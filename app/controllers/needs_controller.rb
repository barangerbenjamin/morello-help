class NeedsController < ApplicationController
    before_action :set_need, only: [:show, :update_view_count]
    def index
      @needs = Need.all.select(&:end_time_in_future?).sort_by(&:end_time)
    end

    def show
      @owner = @need.user
      if @need.services.any?
        @service =  @need.services.first
        @helper = @service.user
        @chatroom = @service.chatroom
      end
      @other_user = current_user
    end

    def new
      @need = Need.new
    end

    def update_view_count
      @need.update(view_count: @need.view_count + 1)
      redirect_to need_path(@need)
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
      params.require(:need).permit(:name, :note, :quantity, :category)
    end

end
