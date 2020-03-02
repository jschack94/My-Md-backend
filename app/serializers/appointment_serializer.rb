class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :diagnosis, :directions, :date, :time
    belongs_to :doctor
    belongs_to :patient


end
