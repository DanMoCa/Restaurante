class CreateOrdens < ActiveRecord::Migration
  def change
    create_table :ordens do |t|
      t.integer :total

      t.timestamps
    end
  end
end
