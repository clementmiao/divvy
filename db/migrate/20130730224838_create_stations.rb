class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.integer :station_id
      t.string :station_name
      t.integer :total_docks
      t.string :latitude
      t.string :longitude
      t.string :st_address1
      t.string :st_address2
      t.string :city
      t.string :postal_code
      t.string :location
      t.string :altitude

      t.timestamps
    end
  end
end
