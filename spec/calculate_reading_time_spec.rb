require "calculate_reading_time"

RSpec.describe "calculate_reading_time method" do
    it "returns 0 if an empty string has been entered" do
        expect(calculate_reading_time("")).to eq 0 
    end

    it "returns 1 if anything less than 200 strings has been entered" do
        expect(calculate_reading_time("one")).to eq 1 
    end   

    it "returns 1 if given a string of 200 words" do
        expect(calculate_reading_time("one " * 200)).to eq 1
        
    end    

    it "returns 0 if an empty string has been entered" do
        expect(calculate_reading_time("one " * 300)).to eq 2 
        
    end    

    it "returns 0 if an empty string has been entered" do
        expect(calculate_reading_time("one " * 400)).to eq 2 
        
    end    
        
end
