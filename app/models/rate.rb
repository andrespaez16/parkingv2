class Rate < ApplicationRecord
    has_many :vehicles, dependent: :destroy
end
