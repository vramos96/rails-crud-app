class CreateEmpleados < ActiveRecord::Migration[5.2]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :rfc
      t.string :nombre_puesto
      t.references :sucursal, foreign_key: true

      t.timestamps
    end
  end
end
