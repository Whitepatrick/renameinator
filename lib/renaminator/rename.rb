# encoding: utf-8
module Renaminator
  class Rename
    attr_reader :series, :season, :episode
    attr_accessor :destination#, :file_names
    def initialize(destination)
      @destination = destination
      #@file_names = Dir.glob("media/#{destination}/*")

      @series = "Show_show"
      @season = "2"
      @episode = "13"
    end

    def rename
      puts "Renaming TV files..."

      folder_path = "media/#{destination}"
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
=begin
#filename = File.basename(f, File.extname(f))
file_name = "#{series}_S#{season}E#{episode}#{File.extname(f)}"
File.rename(f, "#{folder_path}/#{file_name}")
=end
