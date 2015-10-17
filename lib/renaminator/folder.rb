# encoding: utf-8
module Renaminator
  class Folder

    attr_accessor :folders_hash
    def initialize
      @folders_hash = {}
    end

    def get_dir_entries(path)
      Dir.entries(path) - ["..", "."]      
    end

    def hash_merger(folder, files)
      folders_hash["#{folder}"] = files
    end

  end
end
