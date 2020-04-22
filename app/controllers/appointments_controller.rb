class AppointmentsController < ApplicationController


  def index
    appointments = Appointment.all
    render json: appointments
  end
  
  def create
    date = params[:datetime]
    p = DateTime.parse(date).to_date.to_s
    appointment = Appointment.create(date: p, time: date, patient_id: params[:patient_id], doctor_id: params[:doctor_id])
    render json: appointment
  end
  
  def show
    appointment = Appointment.find_by(id: params[:id])
    render json: appointment
  end
  
  def update
    appointment = Appointment.find_by(id: params[:id])
    appointment.update(diagnosis: params[:diagnosis])
    appointment.update(directions: params[:directions])
  
    render json: appointment
  end
  
  def destroy
    appointment = Appointment.find_by(id: params[:id])
    appointment.destroy
    render json: appointment
  end
  
  # def edit
  #   appointment = Appointment.find(params[:id])
  # end
  
  

end

