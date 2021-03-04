require 'rainbow'
require 'wax_tasks'

dir  = './_data/raw_files'

Dir["#{dir}/**/*"].each do |f|
  puts "Downcasing '#{File.basename(f)}' to '#{File.basename(f.downcase)}'"
  File.rename(f, f.downcase)
end

puts Rainbow("Done ✔").green
