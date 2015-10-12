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
    def get_folders
      folders = Dir.entries("#{base_folder}") - [".", ".."]
      folders.each do |folder|
        files = Dir.entries("#{base_folder}/#{folder}") - [".", ".."]
        files.each do |file|
          folder_hash[:files] = file
        end
      end
    end
    def query_db_api
    end
    def make_info_object
    end
  end
end
