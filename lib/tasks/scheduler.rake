desc "This task is called by the Heroku scheduler add-on"

task :pull_stations => :environment do
  puts "Pulling Data..."
  Chicago.stations
  puts "done."
end

task :pull_data => :environment do 
	puts "Pulling Data..."
	Chicago.pull
	puts "done"
end