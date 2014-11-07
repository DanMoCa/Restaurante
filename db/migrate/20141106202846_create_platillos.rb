class CreatePlatillos < ActiveRecord::Migration
  def change
    create_table :platillos do |t|
      t.string :nombre
      t.integer :precio
      t.text :descripcion

      t.timestamps
    end
  end
end
