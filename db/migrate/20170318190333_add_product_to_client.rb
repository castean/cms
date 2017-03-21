class AddProductToClient < ActiveRecord::Migration
  def up

  end
  def change
    remove_column :clients, :pay_type_id
    add_column :clients, :product_id, :integer
  end
end
