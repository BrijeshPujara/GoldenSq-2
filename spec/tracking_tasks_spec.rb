require "tracking_tasks"

RSpec.describe "tracking_tasks method" do
    it "returns true if the string entered includes #TODO" do
      expect(tracking_tasks("#TODO write ruby")).to eq true  
    end

    it "returns false when string is lowercase" do
      expect(tracking_tasks("#todo write ruby")).to eq false  
    end

    it "returns false when the string is empty" do
      expect(tracking_tasks("")).to eq false  
    end

    it "throws an argument arror when there is no input" do
      expect{ tracking_tasks() }.to raise_error ArgumentError 
    end


end
