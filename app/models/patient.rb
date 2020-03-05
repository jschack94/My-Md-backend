class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, -> { distinct }, through: :appointments
    validates_presence_of :first_name, :last_name, :height, :age, :weight, :image, :email, :health_conditions
    validates_uniqueness_of :first_name, :last_name, :email


    def full_name
      self.first_name + " " + self.last_name
    end

    def height_string
      height = self.height
      remainderInches = height%12
      footInches = height-remainderInches
      feet = footInches/12
      p height
      p remainderInches
      p footInches
      p feet
      string = "#{feet}" + " " + "feet" + " " + "#{remainderInches}" + " inches"
    end

end
