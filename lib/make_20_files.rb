Dir.mkdir('files')
Dir.chdir('files')
range = (1..20)

range.each do |a|
  File.new("new_#{a}.file", "w+")
end
