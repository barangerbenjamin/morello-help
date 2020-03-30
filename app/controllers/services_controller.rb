class ServicesController < ApplicationController
  def create
    @need = Need.find(params[:need_id])
    @need.services.build_user(user: current_user)
    if @service.save
      redirect_to need_path(@need), notice: "You are helping #{@need.user.full_name} out!"
    else
      render "form", error: "You cant do this at the moment!"
    end
  end

  private

  def service_params
  end
end
