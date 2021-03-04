require 'rainbow'
require 'wax_tasks'

filename = './_data/ibx.csv'
metadata = WaxTasks::Utils.ingest filename

CSV.open(filename, 'wb') do |csv|
  header = metadata.flat_map(&:keys).uniq
  csv << header
  metadata.each do |hash|
    pid = hash.fetch('pid')
    puts "Downcasing '#{pid}' to '#{pid.downcase}'"
    hash['pid'] = pid.downcase
    csv << hash.values
  end
end

puts Rainbow("\nDone ✔").green
