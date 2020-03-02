class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :specialty, :degree, :bio, :residency, :email, :image
end
