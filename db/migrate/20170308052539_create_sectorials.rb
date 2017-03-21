class CreateSectorials < ActiveRecord::Migration
  def change
    create_table :sectorials do |t|
      t.string :nombre
      t.string :ip_address
      t.integer :limite

      t.timestamps null: false
    end
  end
end
