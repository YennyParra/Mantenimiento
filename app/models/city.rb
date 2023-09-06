class City < ApplicationRecord
    has_many :maintenances, dependent: :destroy 
end
