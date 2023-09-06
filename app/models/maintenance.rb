class Maintenance < ApplicationRecord
  belongs_to :machine
  belongs_to :city
  belongs_to :user
  has_and_belongs_to_many :materials

end
