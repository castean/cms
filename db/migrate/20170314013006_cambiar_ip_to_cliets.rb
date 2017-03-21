class CambiarIpToCliets < ActiveRecord::Migration
  def up

  end
  def change
    remove_column :clients, :ip_address_id
    add_column :clients, :ip_address, :string
  end
end
