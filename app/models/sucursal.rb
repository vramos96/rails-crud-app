class Sucursal < ApplicationRecord
  belongs_to :persona
  has_many :empleados
  validates :nombre, presence: true
  validates :calle, presence: true
  validates :colonia, presence: true
  validates :num_exterior, presence: true, numericality: { only_integer: true }
  validates :num_interior, numericality: { only_integer: true }, allow_blank: true
  validates :codigo_postal, presence: true, numericality: { only_integer: true }
  validates :ciudad, presence: true
  validates :pais, presence: true
end
