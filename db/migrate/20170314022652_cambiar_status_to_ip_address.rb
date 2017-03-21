class CambiarStatusToIpAddress < ActiveRecord::Migration
  def up

  end
  def change
    remove_column :ip_addresses, :ip_status_id
    add_column :ip_addresses, :status_id, :integer
  end
end
