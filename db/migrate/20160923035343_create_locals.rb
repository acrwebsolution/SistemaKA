class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :codlocal
      t.string :distrito
      t.string :direccion

      t.timestamps null: false
    end
  end
end
