class CreateMusicalGenres < ActiveRecord::Migration
  def change
    create_table :musical_genres do |t|
      t.string :codgenmus
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
