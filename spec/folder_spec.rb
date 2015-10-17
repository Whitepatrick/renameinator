# encoding: utf-8
require './spec/spec_helper'
module Renaminator
  RSpec.describe Folder do
    describe ".get_dir_entries" do
      context "prepare folder object" do
        it "should not contain extra entries" do
          folder = Folder.new
          folders = folder.get_dir_entries("media")
          expect(folders).not_to include("..", ".")
        end
        it "expects folder contents to at least have parent and child dir" do
          folder = Folder.new
          folders = folder.get_dir_entries("media")
          expect(folders.length).to be == 4
        end
        it "strips dirs and sub dirs of junk files"
      end
    end

    describe ".hash_merger" do
      context "prepares clean object for renaming" do
        folder = Folder.new
        h = Hash.new
        folders = folder.get_dir_entries("media")
        files = folder.get_dir_entries("media/#{folders[0]}")
        it "expects a hash object" do
          h["media/#{folders[0]}"] = files
          expect(h).to be_kind_of(Hash)
        end
        it "expects non-empty hash object" do
          expect(h).not_to be_empty
        end
      end
    end
  end
end
