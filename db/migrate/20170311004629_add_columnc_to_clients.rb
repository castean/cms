class AddColumncToClients < ActiveRecord::Migration
  def change
    add_column :clients, :ip_address_id, :integer
    add_column :clients, :pay_type_id, :integer
    add_column :clients, :sectorial_id, :integer
    add_column :clients, :status_id, :integer
    remove_column :clients, :pay_type_ip
  end
end
