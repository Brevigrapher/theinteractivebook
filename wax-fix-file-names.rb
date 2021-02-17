dir = './_data/raw_files/ibx'
Dir["#{dir}/*"].each { |f| File.rename(f, f.downcase) }
