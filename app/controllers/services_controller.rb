class ServicesController < ApplicationController
  def create
    @need = Need.find(params[:need_id])
    @service = @need.services.build(user: current_user)
    if @service.save
      redirect_to need_path(@need), notice: "You are helping #{@need.user.full_name} out!"
    else
      render "form", error: "You cant do this at the moment!"
    end
  end

  def update
    @service = Service.find(params[:id])
    @service.status = "helped"
    @service.update(service_params)
    redirect_to need_path(@service.need)
  end
  

  private

  def service_params
    params.require(:service).permit(:price, :receipt)
  end
end
