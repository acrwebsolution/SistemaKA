class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|
      t.string :codtipoprod
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
