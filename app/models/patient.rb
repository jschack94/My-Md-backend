class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    validates_presence_of :first_name, :last_name, :height, :age, :weight, :image, :email, :health_conditions
end
