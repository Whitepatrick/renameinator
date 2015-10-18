# encoding: utf-8
module Renaminator
  class Rename
    def rename(files)
      puts "Renaming files..."
    end
  end
end
=begin
files.sort.each do |f|
  filename = "Edit_#{File.basename(f, File.extname(f))}_S0E01"
  File.rename("media/#{f}", "media/#{filename}")
  puts "Now renaming #{f} to: #{filename}"
end
puts "Renaming complete."
=end
