# encoding: utf-8
module Renaminator
  class Folder

    attr_accessor :folder_hash, :file_hash
    def initialize
      @folder_hash = Hash.new
      @file_hash = Hash.new
    end

    def get_hash(dir, hash_type)
      Dir.entries("#{dir}").each { |d| "#{hash_type}"["#{d}"] = "" }
    end

    def remove_working_dirs(arr)
      arr - [".", "..", "*.nfo", "*.txt"]
    end

    def query_db_api
    end
    def make_info_object
    end
  end
end
