desc "This task is called by the Heroku scheduler add-on"

task :pull_data => :environment do
  puts "Pulling Data..."
  NewsFeed.update
  puts "done."
end