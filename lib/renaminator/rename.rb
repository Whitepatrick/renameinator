# encoding: utf-8
module Renaminator
  class Rename

    attr_reader :folder_path
    attr_accessor :destination
    def initialize(destination)
      @destination = destination
      @folder_path = "media/#{destination}"
    end

    def rename
      puts "Renaming #{destination} files..."
      Dir.glob("#{folder_path}/*").sort.each do |f|
        filename = "Edit_#{File.basename(f, File.extname(f))}_S0E01"
        File.rename(f, "#{folder_path}/#{filename}")
        puts "Now renaming #{f} to: #{filename}"
      end
    puts "Renaming complete."
    end
  end
end

ren = Renaminator::Rename.new("cool_show")
ren.rename
