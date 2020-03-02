class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    validates_presence_of :name, :height, :age, :weight, :image, :email, :condition
end
