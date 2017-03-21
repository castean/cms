class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :fullname
      t.string :direccion
      t.string :tel
      t.string :cel
      t.string :email
      t.datetime :fecha_inicio
      t.datetime :fecha_termino
      t.integer :pay_type_ip
      t.integer :client_status_id

      t.timestamps null: false
    end
  end
end
