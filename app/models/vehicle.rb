class Vehicle < ApplicationRecord
  belongs_to :rate
  has_many :commings 
end
