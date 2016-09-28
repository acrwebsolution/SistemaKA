class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.string :codmesa
      t.string :codlocal
      t.string :codcliente
      t.string :descripcion
      t.integer :capacidad
      t.decimal :precioconsumo

      t.timestamps null: false
    end
  end
end
