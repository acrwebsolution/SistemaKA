class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :codproducto
      t.string :codtipoprod
      t.string :descripcion
      t.decimal :precio
      t.integer :stock

      t.timestamps null: false
    end
  end
end
