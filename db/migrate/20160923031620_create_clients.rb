class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :codcliente
      t.string :nombre
      t.string :apellido
      t.integer :dni
      t.string :telefono

      t.timestamps null: false
    end
  end
end
