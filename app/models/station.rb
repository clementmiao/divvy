class Station < ActiveRecord::Base
  attr_accessible :altitude, :city, :latitude, :location, :longitude, :postal_code, :st_address1, :st_address2, :station_id, :station_name, :total_docks, :landmark
end
