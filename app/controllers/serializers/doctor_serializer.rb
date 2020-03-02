class Doctor Serializer < ActiveModel::Serializer
    attributes :id, :name, :specialty, :degree, :bio, :residency, :email, :image :appointments
  
    def appointments
      @object.appointments
    end
  end