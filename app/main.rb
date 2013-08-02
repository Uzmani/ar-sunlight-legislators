require_relative './models/senator.rb'
require_relative './models/representative.rb'
require 'pry'

# senators = Senator.where('state=?', 'MA').order('lastname')

# puts "Senators:"
# senators.each do |senator|
#   puts "#{senator.attributes['firstname']} #{senator.attributes['lastname']} (#{senator.attributes['party']})" 
# end
# puts
# puts "Representatives:"
# Representative.where('state=?', 'MA').order('lastname').each do |representative|
#  puts "#{representative.attributes['firstname']} #{representative.attributes['lastname']} (#{representative.attributes['party']})" 
# end

# male_senator_count = Senator.where('gender=? AND in_office=?', 'M', 1).count.to_f
# male_senator_perc = (male_senator_count / Senator.where('in_office=?', 1).count) * 100

# puts "Male Senators: #{male_senator_count.to_i} (#{male_senator_perc.to_i}%) "

# male_representative_count = Representative.where('gender=? AND in_office=?', 'M', 1).count.to_f
# male_representative_perc = (male_representative_count / Representative.where('in_office=?', 1).count) * 100

# puts "Male Representatives: #{male_representative_count.to_i} (#{male_representative_perc.to_i}%) "

# female_senator_count = Senator.where('gender=? AND in_office=?', 'F', 1).count.to_f
# female_senator_perc = (female_senator_count / Senator.where('in_office=?', 1).count) * 100

# puts "Female Senators: #{female_senator_count.to_i} (#{female_senator_perc.to_i}%) "

# female_representative_count = Representative.where('gender=? AND in_office=?', 'F', 1).count.to_f
# female_representative_perc = (female_representative_count / Representative.where('in_office=?', 1).count) * 100

# puts "Female Representatives: #{female_representative_count.to_i} (#{female_representative_perc.to_i}%) "


# Representative.where('in_office=?', 1).group('state').count.sort_by { |k,v| v }.reverse.each do |array|
#   puts "#{array[0]}: 2 Senators, #{array[1]} Representatives"
# end

puts "Representatives: #{Representative.count}"
puts "Senators: #{Senator.count}"

Representative.where('in_office=?', 0).destroy_all
Senator.where('in_office=?', 0).destroy_all

puts "Representatives: #{Representative.count}"
puts "Senators: #{Senator.count}"

binding.pry
