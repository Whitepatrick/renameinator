# encoding: utf-8
require './spec/spec_helper'

RSpec.describe Renaminator::Folder do

  describe 'Folder properties' do
    it "defaults base folder = media/" do
      folder = Renaminator::Folder.new
      expect(folder.base_folder).to eq("media/")
    end
    it "can set base folder" do
      folder = Renaminator::Folder.new("test_media/")
      expect(folder.base_folder).to eq("test_media/")
    end
    it 'checks media folders available' do
      folder = Renaminator::Folder.new
      expect(folder.media_dirs).to eq(["tv/", "movies/", "music/"])
    end
  end

  describe '.get_folder_hash' do
    it 'creates a hash of folder contents' do
      folder = Renaminator::Folder.new
       dirs = Dir.glob("media/**/*")
      expect(folder.get_folder_hash).to eq(Hash[*dirs])
    end
  end

  describe '.make_info_object' do
    it 'packages folder info' do
      folder = Renaminator::Folder.new
      
    end
  end

  describe '.query_db_api' do
    it 'sets db uri from folder info'
    it 'query''s using name from folder info'
  end


end
