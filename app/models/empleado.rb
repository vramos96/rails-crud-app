class Empleado < ApplicationRecord
  belongs_to :sucursal
  validates :nombre, presence: true
  validates :rfc, presence: true
  validates :nombre_puesto, presence: true
end
