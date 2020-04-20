class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, -> { distinct }, through: :appointments

  validates :first_name, presence: true, uniqueness: true
  validates :last_name, presence: true, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :bio, presence: true
  validates :specialty, presence: true
  validates :image, presence: true

  def full_name
    self.first_name + " " + self.last_name
  end

end
