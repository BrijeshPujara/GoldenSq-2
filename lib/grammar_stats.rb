class GrammarStats
    def initialize
      # ...
      @count_T = 0
      @count_F = 0
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
      fail "Please input a string" if text == "" || text.class == Integer
      @check_grammar = text

      if @check_grammar[0] == @check_grammar[0].upcase && ["!", "?", ",", "."].include?(@check_grammar[-1])
        @count_T +=1
        return true
      else
        @count_F +=1
        return false
      end

    # true if @check_grammar[0] == @check_grammar[0].upcase && @check_grammar[-1] == "!" 
      

    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      # "One! two Three! four five" 2 words passed / 5 words checked = 2/5 = 0.4 x 100 = 40

      
    total = @count_T + @count_F
    result = @count_T / total.to_f * 100
    return result.to_i


    end
  end

  grammar = GrammarStats.new
  grammar.check("Hello World!")
  grammar.check("Hello World!")
  grammar.check("Hello World!")
  grammar.check("Hello World!")
  grammar.check("hello World")
  puts grammar.percentage_good

  #testing one two three