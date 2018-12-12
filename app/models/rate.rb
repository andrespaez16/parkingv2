class Rate < ApplicationRecord
has_many :vehicles, dependent: :destroy
    
 validates :vehicle_type,presence: true
 validates :rate,presence: true
 validates :rate, numericality: { only_integer: true }

end
