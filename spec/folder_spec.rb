# encoding: utf-8
require './spec/spec_helper'
module Renaminator
  RSpec.describe Folder do
    
    describe '.get_hash' do
      it 'gets an array containing path names' do
        folder = Folder.new
        folder.get_hash("spec/media", "folder_hash")
      end
    end

    describe '.remove_working_dirs' do
      it 'removes current/parent dirs from folder hash' do
        folder = Folder.new
        no_working_dirs = folder.remove_working_dirs(["folder_a", "folder_b", ".", ".."])
        expect(no_working_dirs).to eq(["folder_a", "folder_b"])
      end
    end

    describe '.make_info_object' do
      it 'packages folder info'
    end

    describe '.query_db_api' do
      it 'sets db uri from folder info'
      it 'query''s using name from folder info'
    end


  end
end
