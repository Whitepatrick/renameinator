Dir.mkdir('media')
Dir.chdir('media')
media_dirs = ["tv", "movies", "music"]
range = (1..20)

media_dirs.each do |dir|
  Dir.mkdir(dir)
  Dir.chdir(dir)
  Dir.mkdir("test_media_dir")
  Dir.chdir("test_media_dir")
  range.each do |a|
    File.new("new_#{a}.file", "w+")
  end
  Dir.chdir("../../")
end
=begin
class Renaminator
  attr_reader :series, :season, :episode
  attr_accessor :destination, :file_names
  def initialize(destination)
    @destination = destination
    @file_names = Dir.glob("#{destination}/*")

    @series = "Show show"
    @season = "2"
    @episode = "13"
  end

  def rename
    puts "Renaming TV files..."

    folder_path = "lib/files/tv/#{destination}"
    Dir.glob(folder_path + "*").sort.each do |f|
      #filename = File.basename(f, File.extname(f))
      file_name = series + "S" + season + "E" + episode + File.extname(f)
      File.rename(f, folder_path + file_name + File.extname(f))
      puts "Now renaming #{file_name}"
    end
  puts "Renaming complete."
  end


end

r = Renaminator.new("show")
r.rename

<tv>
  <series>"#{series}"</series>
  <season>"#{season}"</season>
  <episode>"#{episode}"</episode>
  <year>"#{year}"</year>
  <desc>"#{desc}"</desc>
</tv>
TV file names have:
  - Series name - string
  - Season number - int
  - Episode number - int
  - Release year - date
  - Description info - text
Movie file names have:
  - Series name - string
  - Movie name - string
  - Release year - date
  - Description info - text
=end
