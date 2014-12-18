require 'csv'

namespace :sayings do
  desc "Imports the sayings from the file Proziceri.csv into the database corresponding to the Rails environment"
  task import_from_csv: :environment do
  	CSV.foreach('db/Proziceri.csv') do |saying|
			Saying.create!(part1: saying[0], separator: saying[1], part2: saying[2])
		end
  end
end
