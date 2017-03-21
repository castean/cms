class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.string :calendario
      t.datetime :fecha_corte
      t.integer :status_id

      t.timestamps null: false
    end
  end
end
