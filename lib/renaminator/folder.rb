# encoding: utf-8
module Renaminator
  class Folder
    attr_reader :media_dirs, :base_folder
    attr_accessor :dir_hash
    def initialize(base_folder = "media")
      @base_folder = base_folder
      @media_dirs = ["tv", "movies", "music"]
      dir_hash = Hash.new
    end
    # gets local path and file info of folder
    # decide if destination is movie, tv, or music
    # query db for file info
    # create media object (factory?)
    def get_folder_hash
      media_dirs.each do |dir|
        Dir[dir + "/**/*"]
      end
    end
    def decide_media_type
    end
    def query_db_api
    end
    def make_info_object
      get_folder_hash.each { |key, value| puts "#{key} is #{value}" }
    end
  end
end
