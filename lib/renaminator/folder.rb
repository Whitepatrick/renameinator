# encoding: utf-8
module Renaminator
  class Folder

    attr_reader :base_path
    attr_accessor :folder_hash, :file_hash
    def initialize(base_path = "spec/media")
      @base_path = base_path
      @folder_hash = Hash.new
      @file_hash = Hash.new
    end

    def get_folder_hash(dir)
      folder_hash["#{dir}"] = Dir.entries("#{dir}")
    end

    def get_file_hash(folder_array)
      Hash[*folder_array.flatten]
      #folder_hash["#{folder}"] = Dir.entries("#{base_path}/#{folder}")
    end

    def remove_working_dirs(arr)
      arr - [".", "..", "*.nfo", "*.txt"]
    end

    def hash_merge
    end

    def query_db_api
    end
  end
end
