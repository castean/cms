class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :calendar_id
      t.integer :client_id
      t.datetime :fecha_corte
      t.datetime :fecha_limite
      t.datetime :fecha_corte
      t.float :saldo
      t.bigint :folio
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
