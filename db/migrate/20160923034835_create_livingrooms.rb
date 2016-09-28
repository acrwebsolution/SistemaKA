class CreateLivingrooms < ActiveRecord::Migration
  def change
    create_table :livingrooms do |t|
      t.string :codsala
      t.string :codlocal
      t.string :codcliente
      t.string :descripcion
      t.integer :capacidad
      t.decimal :precioconsumo

      t.timestamps null: false
    end
  end
end
