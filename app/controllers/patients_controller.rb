class PatientsController < ApplicationController

  def index
    patients = Patient.all
    render json: patients
  end

  def show
    patient = Patient.find_by(id: params[:id])
    render json: patient
  end



end
