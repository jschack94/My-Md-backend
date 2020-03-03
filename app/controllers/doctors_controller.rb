class DoctorsController < ApplicationController

  def index
    doctors = Doctor.all
    render json: doctors
  end

  def show
    doctor = Doctor.find_by(id: params[:id])
    render json: doctor
  end

  def create
    doctor = Doctor.find_or_create_by(email: params[:email])
    render json: doctor
  end
<<<<<<< HEAD
  
=======

>>>>>>> d3ff470e6af004b04115c96fa835bb370729d93e
end
