class AppointmentsController < ApplicationController

def index
  appointments = Appointment.all
  render json: appointments
end

def create
  appointment = Appointment.create(id: params[:id])
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

# def edit
#   appointment = Appointment.find(params[:id])
# end

end
