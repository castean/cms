class CreateIpStatuses < ActiveRecord::Migration
  def change
    create_table :ip_statuses do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
