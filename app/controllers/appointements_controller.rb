class AppointementsController < ApplicationController
  def index
    @appointements = current_user.appointements
  end

  def new
    @appointement = Appointement.new
  end

  def create
    @appointement = Appointement.new(appointement_params)
    @appointement.user = current_user
    @appointement.doctor = Doctor.find(params[:doctor_id])
    if @appointement.save
      redirect_to appointements_index_path
    else
      render :new
    end
  end

  def destroy
    @appointement = Appointement.find(params[:id])
    @appointement.destroy
    redirect_to appointements_index_path
  end

  private

  def appointement_params
    params.require(:appointement).permit(:date, :doctor_id, :victim_id)
  end
end
