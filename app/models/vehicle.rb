class Vehicle < ApplicationRecord
  belongs_to :rate
  has_many :commings 
  validates :plate, format: { with: /[A-Z]{3}[0-9]{3}/}
  validates :plate,presence: true
end
