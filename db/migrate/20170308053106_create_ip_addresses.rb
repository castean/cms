class CreateIpAddresses < ActiveRecord::Migration
  def change
    create_table :ip_addresses do |t|
      t.string :ip_address
      t.integer :sectorial_id
      t.integer :ip_status_id

      t.timestamps null: false
    end
  end
end
