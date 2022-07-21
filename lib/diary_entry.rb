class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @start = 0
    end
  
    def title
      # Returns the title as a string
      return @title
    end
  
    def contents
      # Returns the contents as a string
      return @contents
    end
  
    def count_words
      # Returns the number of words in the contents as an integer
      @contents.split(" ").length
    end
  
    def reading_time(wpm) # wpm is an integer representing the number of words the
                          # user can read per minute
      # Returns an integer representing an estimate of the reading time in minutes
      # for the contents at the given wpm.
      words = wpm
      word_count = count_words
      

      return word_count/words.to_f

    end
  
    def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    
      # 2 words per minute
      # 1 overall minute to read 2 words

      arr = @contents.split(" ")
      end_at = wpm * minutes
    
      chunk_array = arr[@start, end_at] # [start = 0, words_pc = 2] [hello, world]
      @start = @start + end_at #0 + 2 = 2
      #second_chunk_array = arr[@start, words_pc] #[start = 2, words_pc = 2] [rise, and]
      return chunk_array.join(" ") 
    
    end
  end

diary = DiaryEntry.new("title", "hello world rise and shine")
puts diary.reading_chunk(2, 1)
puts diary.reading_chunk(2, 1)
puts diary.reading_chunk(2, 1)
