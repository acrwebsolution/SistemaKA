class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :codautor
      t.string :codgenmus
      t.string :nombre

      t.timestamps null: false
    end
  end
end
