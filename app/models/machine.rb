class Machine < ApplicationRecord
    has_many  :maintenance, dependent: :destroy
    has_many_attached :images
    self.inheritance_column = :my_type_column
end
