class Persona < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :sucursals
  validates :nombre, presence: true
  validates :apellido_paterno, presence: true
  validates :apellido_materno, presence: true
  validates :rfc, presence: true
  validates :nombre_empresa, presence: true, uniqueness: {scope: :rfc}

  def to_text
    return self.nombre + ' ' + self.apellido_paterno + ' ' + self.apellido_materno
  end

end
