class AddCategoriaToPlatillos < ActiveRecord::Migration
  def change
    add_column :platillos, :categoria, :string
  end
end
