require "grammar_stats"

RSpec.describe GrammarStats do
  context "whether the text begins with a capital letter and ends with punctuation mark" do
    it "returns true or false" do
      grammar = GrammarStats.new
      expect(grammar.check("Hello world!")).to eq true
    end
  end
end
