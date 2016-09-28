class CreateMusicalOrders < ActiveRecord::Migration
  def change
    create_table :musical_orders do |t|
      t.string :codpedmus
      t.string :codcliente
      t.string :codmusica

      t.timestamps null: false
    end
  end
end
