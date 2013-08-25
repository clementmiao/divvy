class Chicago
  include HTTParty
  def self.pull
    response = HTTParty.get('http://divvybikes.com/stations/json')
    responses = JSON.parse(response)


    stations = responses["stationBeanList"]
    stations.each do |element|
    	p element
    end

  	p 1
  end
end