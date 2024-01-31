class AppointementsController < ApplicationController
  def index
    @appointements = Appointement.all
  end

  def show
    @appointement = Appointement.find(params[:id])
  end

  def new
    @appointement = Appointement.new
  end

  def create
    @appointement = Appointement.new(appointement_params)
    @appointement.victim = current_user.victim
    @appointement.doctor = Doctor.find(params[:doctor_id])
    @appointement.save!
  end

  def edit
  end

  def update
  end

  private

  def appointement_params
    params.require(:appointement).permit(:date,:time, :doctor_id, :victim_id)
  end
end
