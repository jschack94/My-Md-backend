class AppointmentsController < ApplicationController

def index
  appointments = Appointment.all
  render json: appointments
end

def show
  appointment = Appointment.find_by(id: params[:id])
  render json: appointment
end

end
