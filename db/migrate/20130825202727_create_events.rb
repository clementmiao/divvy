class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :station_id
      t.integer :available_docks
      t.string :status_value
      t.integer :status_key
      t.integer :available_bikes

      t.timestamps
    end
  end
end
