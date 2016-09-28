class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :codreserva
      t.string :codcliente
      t.string :codlocal
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
