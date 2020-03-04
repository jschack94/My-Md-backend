class PatientsController < ApplicationController

  def index
    patients = Patient.all
    render json: patients
  end

  def show
    patient = Patient.find_by(id: params[:id])
    render json: patient
  end

  def update
    patient = Patient.find_by(id: params[:id])
    patient.update(height: params[:height])
    patient.update(weight: params[:weight])
    patient.update(age: params[:age])
    patient.update(email: params[:email])
  
    render json: patient
  end


end
