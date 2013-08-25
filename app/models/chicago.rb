class Chicago
  include HTTParty
  def self.stations
    response = HTTParty.get('http://divvybikes.com/stations/json')
    responses = JSON.parse(response)


    stations = responses["stationBeanList"]
    stations.each do |element|
      station = Station.new
      station.altitude = element["altitude"]
      station.city = element["city"]
      station.latitude = element["latitude"]
      station.location = element["location"]
      station.longitude = element["longitude"]
      station.postal_code = element["postalCode"]
      station.st_address1 = element["stAddress1"]
      station.st_address2 = element["stAddress2"]
      station.station_id = element["id"]
      station.station_name = element["stationName"]
      station.total_docks = element["totalDocks"]
      station.landmark = element["landMark"]
      station.save
    end
  end

  def self.pull
    response = HTTParty.get('http://divvybikes.com/stations/json')
    responses = JSON.parse(response)

    stations = responses["stationBeanList"]
    stations.each do |element|
      event = Event.new
      event.station_id = element["id"]
      event.available_bikes = element["availableBikes"]
      event.available_docks = element["availableDocks"]
      event.status_key = element["statusKey"]
      event.status_value = element["statusValue"]
      event.save
    end
  end
end