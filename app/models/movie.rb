class Movie < ApplicationRecord
  belongs_to :client, optional: true

  def to_s
    self.name
  end

  def disponible?
    cliente.nil? # La película está disponible si no tiene cliente asignado
  end

end
