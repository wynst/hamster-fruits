require 'spec_helper'
require 'models/hamster_conf'

describe HamsterConf do

  describe "GConfTool should return valid value" do
    it "should run successfully" do
      mins = HamsterConf.day_start_minutes
      mins.should_not == 0
      # test the cached value
      mins.should == HamsterConf.day_start_minutes
    end
  end

end

