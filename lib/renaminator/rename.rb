# encoding: utf-8
module Renaminator
  class Rename
    # takes object with TV or MOVIE params
    # sets file name variables from object params
    # removes junk (.nfo, .txt, etc.)
    # renames files
    # store info into DB (optional)
    def remove_junk(folder)
      folder.delete("*.nfo")
      puts folder
    end
    def rename_files
    end
  end
end
