# encoding: utf-8
require 'fileutils'
=begin
module Renaminator
  class Rename
    def rename(files)
      puts "Renaming files..."
    end
  end
end
files.sort.each do |f|
  filename = "Edit_#{File.basename(f, File.extname(f))}_S0E01"
  File.rename("media/#{f}", "media/#{filename}")
  puts "Now renaming #{f} to: #{filename}"
end
puts "Renaming complete."
=end

base_path = "/home/zaphod/Documents/books/python/temp"
files = Dir.glob("#{base_path}/*")
files.each do |file|
  split_file_name = file.split('}')
  file_name_dirty = split_file_name[1]
  file_name_clean = file_name_dirty.downcase.split.join('_')
  puts "Cleaning up #{file_name_clean}.."
  FileUtils.mv("#{file}", "#{base_path}/#{file_name_clean}")

end
