class CreateBillDetails < ActiveRecord::Migration
  def change
    create_table :bill_details do |t|
      t.string :nrofactura
      t.string :codpedprod
      t.string :codcliente
      t.decimal :precio

      t.timestamps null: false
    end
  end
end
