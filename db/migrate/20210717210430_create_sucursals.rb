class CreateSucursals < ActiveRecord::Migration[5.2]
  def change
    create_table :sucursals do |t|
      t.string :nombre
      t.string :calle
      t.string :colonia
      t.string :num_exterior
      t.string :num_interior
      t.string :codigo_postal
      t.string :ciudad
      t.string :pais
      t.references :persona, foreign_key: true

      t.timestamps
    end
  end
end
