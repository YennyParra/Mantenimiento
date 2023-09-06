class Machine < ApplicationRecord
    belongs_to :maintenance
    has_many_attached :images
    self.inheritance_column = :my_type_column
end
