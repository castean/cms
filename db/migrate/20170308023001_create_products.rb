class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.string :descripcion
      t.integer :mb_subida
      t.integer :mb_bajada
      t.float :costo
      t.integer :ip_status_id

      t.timestamps null: false
    end
  end
end
