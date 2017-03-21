class BorrarStatusToProducts < ActiveRecord::Migration
  def up
    remove_column :products, :ip_status_ip
  end
  def change
    add_column :products, :status_id, :integer
  end
end
