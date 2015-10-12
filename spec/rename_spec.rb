# encoding: utf-8
require './spec/spec_helper'

RSpec.describe Renaminator::Rename do

  describe '.remove_junk' do
    it "should take out the junk files of a file array" do
      sample_folder = ["crappy_info.nfo", "get_outta_here.txt", "good_file_keeper.mp4"]
      renamer = Renaminator::Rename.new
      expect(renamer.remove_junk(sample_folder)).to eq(["good_file_keeper.mp4"])
    end
  end
end
