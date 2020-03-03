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
  

end
