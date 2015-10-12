# encoding: utf-8
require './spec/spec_helper'

RSpec.describe Renaminator::Folder do

  describe 'Folder properties' do
    it "defaults base folder = media/" do
      folder = Renaminator::Folder.new
      expect(folder.base_folder).to eq("spec/media")
    end
    it "can set base folder" do
      folder = Renaminator::Folder.new("test_media")
      expect(folder.base_folder).to eq("test_media")
    end
  end

  describe '.get_folders' do
    it 'gets folders and files'
  end

  describe '.make_info_object' do
    it 'packages folder info'
  end

  describe '.query_db_api' do
    it 'sets db uri from folder info'
    it 'query''s using name from folder info'
  end


end
