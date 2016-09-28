class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :codmusica
      t.string :codgenero
      t.string :codautor
      t.string :titulo

      t.timestamps null: false
    end
  end
end
