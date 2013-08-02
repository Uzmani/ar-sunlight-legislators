require 'csv'
require 'sqlite3'
require_relative '../app/models/senator.rb'
require_relative '../app/models/representative.rb'

class SunlightLegislatorsImporter
  def self.import(filename)
    csv = CSV.new(File.open(filename), :headers => true)
    csv.each do |row|
      row.each do |field, value|
        if row[field] == 'Sen'
          Senator.create!(Hash[row])
        elsif row[field] == 'Rep'
          Representative.create!(Hash[row])
        elsif row[field] = 'district'
          # To by pass the headers row
        else
          raise NotImplementedError, "TODO: figure out what to do with this row and do it!"
        end
      end
    end
  end
end

SunlightLegislatorsImporter.import("../db/data/legislators.csv")

# SunlightLegislatorsImporter.import("legislators.csv")

# IF YOU WANT TO HAVE THIS FILE RUN ON ITS OWN AND NOT BE IN THE RAKEFILE, UNCOMMENT THE BELOW
# AND RUN THIS FILE FROM THE COMMAND LINE WITH THE PROPER ARGUMENT.
# begin
#   raise ArgumentError, "you must supply a filename argument" unless ARGV.length == 1
#   SunlightLegislatorsImporter.import(ARGV[0])
# rescue ArgumentError => e
#   $stderr.puts "Usage: ruby sunlight_legislators_importer.rb <filename>"
# rescue NotImplementedError => e
#   $stderr.puts "You shouldn't be running this until you've modified it with your implementation!"
# end
