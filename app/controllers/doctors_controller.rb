class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
    @appointement = Appointement.new
  end

  def show
    @doctor = Doctor.find(params[:id])

  end
end
