class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :specialty, :degree, :bio, :residency, :email, :image, :full_name
<<<<<<< HEAD
  # def full_name
  #   object.first_name + object.last_name
  # end
=======


  has_many :appointments
  has_many :patients

  

>>>>>>> d3ff470e6af004b04115c96fa835bb370729d93e

end
