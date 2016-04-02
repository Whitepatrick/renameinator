# encoding: utf-8
require './spec/spec_helper'
module Renaminator
  RSpec.describe Rename do
    describe '.rename' do
      it "grabs number from file name"
      it "renames an array of files" do
        renamer = Rename.new
        renamer.extract_info("The.Walking.Dead.S06E01.PROPER.HDTV.x264-KILLERS[ettv]")
      end
    end
  end
end
