class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :diagnosis, :directions, :date, :time, :stringified_date, :stringified_time

    belongs_to :doctor
    belongs_to :patient

end
