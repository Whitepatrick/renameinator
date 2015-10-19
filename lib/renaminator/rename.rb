# encoding: utf-8
module Renaminator
  class Rename
    def rename(files)
      puts "Renaming files..."
    end
  end
end
=begin

base_path = "media"
folder = Folder.new
folders = folder.get_dir_entries("#{base_path}")
files = folder.get_dir_entries("#{base_path}/#{files}")
files.each do |file|
  FileUtils.mv(file, "edit_#{file}_.file")
end

files.sort.each do |f|
  filename = "Edit_#{File.basename(f, File.extname(f))}_S0E01"
  File.rename("media/#{f}", "media/#{filename}")
  puts "Now renaming #{f} to: #{filename}"
end
puts "Renaming complete."
=end
