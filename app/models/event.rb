class Event < ActiveRecord::Base
  attr_accessible :available_bikes, :available_docks, :station_id, :status_key, :status_value
end
