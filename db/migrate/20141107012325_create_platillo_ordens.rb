class CreatePlatilloOrdens < ActiveRecord::Migration
  def change
    create_table :platillo_ordens do |t|
      t.integer :idplatillo
      t.integer :idorden
    end
  end
end
