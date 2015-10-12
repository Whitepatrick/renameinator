Dir.mkdir("media")
Dir.chdir("media")
Dir.mkdir("cool_show")
Dir.chdir("cool_show")
range = (1..20)

range.each do |a|
  File.new("new_#{a}.file", "w+")
end
Dir.chdir("../")
Dir.mkdir("other_cool_show")
Dir.chdir("other_cool_show")
other_range = (1..20)

other_range.each do |b|
  File.new("other_new_#{b}.filk", "w+")
end
