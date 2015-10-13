# encoding: utf-8
module Renaminator
  class Folder
    attr_reader  :base_folder
    attr_accessor :folder_hash
    def initialize(base_folder = "spec/media",
                   folder_hash = Hash.new{ "folders" })
      @base_folder = base_folder
      @folder_hash = folder_hash
    end
    def get_folder_hash
      Find.find(base_folder) do |path|
        folder_hash[:folders] = path if path =~ /.*\.file$/
      end
    end
    def query_db_api
    end
    def make_info_object
    end
  end
end
