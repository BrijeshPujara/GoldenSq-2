class GrammarStats
    def initialize
      # ...
    end
  
    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
      @check_grammar = text
      @count_T = 0
      @count_F = 0

    #   if check_grammar[0] == check_grammar[0].upcase && check_grammar[-1] == "!"
    #     @count_T +=1
    #     return true
    #   else
    #     @count_F +=1
    #     return false
    #   end

    true if @check_grammar[0] == @check_grammar[0].upcase && @check_grammar[-1] == "!" 
      

    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      # "One! two Three! four five" 2 words passed / 5 words checked = 2/5 = 0.4 x 100 = 40

      
    #   total = @count_T + @count_F
    #   result = @count_T / total * 100


    end
  end