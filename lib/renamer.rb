class Renaminator
  attr_reader :cwd, :base_file_name
  attr_accessor :destination, :file_names
  def initialize(destination)
    @cwd = cwd || Dir.pwd
    @destination = destination || cwd
    @file_names = Dir.glob("#{destination}/*")
  end
end


r = Renaminator.new("files")

p r.cwd
p r.destination

r.file_names.sort.each do |f|
  Dir.chdir(destination/"files")
  file_name = File.basename(f, File.extname(f))
  File.rename(f, "#{file_name.upcase + File.extname(f)}")
end
#p file_names
