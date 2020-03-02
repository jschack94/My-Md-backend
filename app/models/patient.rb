class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    validates_presenceof :name, :height, :age, :weight, :image, :email, :condition
end
