require './lib/renaminator'
module Renaminator
  class Scratch

    def 

  end
end

=begin
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
