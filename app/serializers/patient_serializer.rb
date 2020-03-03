class PatientSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :health_conditions, :height, :weight, :age, :email, :image, :full_name, :height_string

  has_many :appointments
  has_many :doctors, through: :appointments

end
