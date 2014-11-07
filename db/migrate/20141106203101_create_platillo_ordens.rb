class CreatePlatilloOrdens < ActiveRecord::Migration
  def change
    create_table :platillo_ordens do |t|
      t.integer :id_orden
      t.integer :id_platillo
    end
  end
end
