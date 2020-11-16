# frozen_string_literal: true

require 'csv'

puts 'Creating the airports...'
path = "#{Rails.root}/docs/"

CSV.foreach("#{path}/airports.csv") do |row|
  Airport.create!(
    icao: row[0],
    name: row[1],
    lat: row[2],
    long: row[3]
  )
  puts "#{Airport.last.icao} OK!"
end
