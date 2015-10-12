# encoding: utf-8
module Renaminator
  class Folder
    attr_reader :media_dirs, :base_folder
    attr_accessor :dir_hash
    def initialize(base_folder = "media")
      @base_folder = base_folder
      @media_dirs = ["tv", "movies", "music"]
      @dir_hash = Hash.new
    end
    def get_folder_hash
      # (/^\S*\.\S*$/)
      media_dirs.each do |dir|
        files = Dir.glob("spec/media/#{dir}/**/*")
        files.shift
        files.each do |f|
          puts File.basename(f)
        end
      end
    end
    def decide_media_type
    end
    def query_db_api
    end
    def make_info_object
    end
  end
end
