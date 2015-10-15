# encoding: utf-8
require './spec/spec_helper'
module Renaminator
  RSpec.describe Folder do

    describe '.get_folder_hash' do
      it 'gets an array containing path names' do
        folder = Folder.new
        folders =
        expect(folder.get_folder_hash("spec/media")).to eq(Dir.entries("spec/media"))
      end
    end

    describe '.get_file_hash' do
      it 'gets a hash of folders with files' do
        folder = Folder.new
        folder_hash = folder.get_folder_hash("spec/media")
        folder.get_file_hash(folder_hash.folder.remove_working_dirs)
      end
    end

    describe '.remove_working_dirs' do
      it 'removes current/parent dirs from folder hash' do
        folder = Folder.new
        no_working_dirs = folder.remove_working_dirs(["folder_a", "folder_b", ".", ".."])
        expect(no_working_dirs).to eq(["folder_a", "folder_b"])
      end
      it 'removes working dirs from get hash object' do
        folder = Folder.new
        no_working_dirs = folder.remove_working_dirs(folder.get_folder_hash("spec/media"))
        expect(no_working_dirs).to eq(["cool_show", "other_cool_show"])
      end
    end

    describe '.hash_merge' do
      it 'merges folder and file hashes together' do
        folder = Folder.new
        folder.hash_merge
      end
    end

    describe '.query_db_api' do
      it 'sets db uri from folder info'
      it 'query''s using name from folder info'
    end


  end
end
