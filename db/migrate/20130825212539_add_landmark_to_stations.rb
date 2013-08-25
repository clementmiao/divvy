class AddLandmarkToStations < ActiveRecord::Migration
  def change
    add_column :stations, :landmark, :string
  end
end
