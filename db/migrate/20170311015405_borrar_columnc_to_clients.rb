class BorrarColumncToClients < ActiveRecord::Migration
  def up
    remove_column :clients, :pay_type_ip
  end
  def change
    add_column :clients, :payment_type_id, :integer
  end
end
