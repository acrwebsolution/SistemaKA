class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
      t.string :codpedprod
      t.string :codcliente
      t.string :codproducto
      t.integer :cantidad

      t.timestamps null: false
    end
  end
end
