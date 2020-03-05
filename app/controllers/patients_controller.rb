class PatientsController < ApplicationController

  def index
    patients = Patient.all
    render json: patients
  end

  def show
    patient = Patient.find_by(id: params[:id])
    render json: patient
  end

  def create
    patient = Patient.create(health_conditions: params["health_conditions"], first_name: params["first_name"], height: params["height"], weight: params["weight"], age: params["age"], image: params["image"], email: params["email"], last_name: params["last_name"])
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
