# encoding: utf-8
module Renaminator
  class Folder
    attr_reader :base_folder
    attr_accessor :media_dirs
    def initialize(base_folder = "media/")
      @base_folder = base_folder
      @media_dirs = ["tv/", "movies/", "music/"]
    end
    # gets local path and file info of folder
    # decide if destination is movie, tv, or music
    # query db for file info
    # create media object (factory?)
    def get_folder_hash
      dirs = Dir.glob("media/**/*")
      Hash[*dirs]
    end
    def decide_media_type
    end
    def query_db_api
    end
    def make_info_object
    end
  end
end
