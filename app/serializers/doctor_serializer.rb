class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :specialty, :degree, :bio, :residency, :email, :image, :full_name


  has_many :appointments
  has_many :patients

  


end
