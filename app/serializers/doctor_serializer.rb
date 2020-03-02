class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :specialty, :degree, :bio, :residency, :email, :image

  def full_name
    object.first_name + object.last_name
  end

end
