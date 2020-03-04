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

  def update
    doctor = Doctor.find_by(id:params[:id])

    doctor.update(bio: params[:bio])
    doctor.update(image: params[:image])
    doctor.update(email: params[:email])
  
  end
end
