require "grammar_stats"

RSpec.describe GrammarStats do
  context "whether the text begins with a capital letter and ends with punctuation mark" do
    it "returns true" do
      grammar = GrammarStats.new
      expect(grammar.check("Hello world?")).to eq true
    end
  end

  context "whether the text begins with a capital letter and ends with punctuation mark" do
    it "returns false" do
      grammar = GrammarStats.new
      expect(grammar.check("hello world")).to eq false
    end
  end

  context "when the user inputs an empty string" do
    it "raises an error" do
      grammar = GrammarStats.new
      expect{ grammar.check("") }.to raise_error "Please input a string"   
    end
  end

  context "when the user inputs nothing as an argument" do
    it "raises an argument error" do
      grammar = GrammarStats.new
      expect{ grammar.check() }.to raise_error ArgumentError
    end
  end

  context "when the user inputs an integer as an argument" do
    it "raises an error" do
      grammar = GrammarStats.new
      expect{ grammar.check(1234) }.to raise_error "Please input a string"
    end
  end

  context "whether it returns 100% after 1 text and 1 pass" do
    it "returns 100" do
      grammar = GrammarStats.new
      grammar.check("Hello World!")
      expect(grammar.percentage_good()).to eq 100
    end
  end

  context "whether it returns 50% after 2 texts and 1 pass" do
    it "returns 50" do
      grammar = GrammarStats.new
      grammar.check("Hello World!")
      grammar.check("Hello World")
      expect(grammar.percentage_good()).to eq 50
    end
  end
end
