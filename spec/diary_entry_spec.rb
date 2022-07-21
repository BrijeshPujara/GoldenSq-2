require "diary_entry"

RSpec.describe DiaryEntry do
  it "initialize's the title and the contents given as an argument" do
    diary = DiaryEntry.new("title", "hello world")    
    expect(diary.title).to eq "title"
    expect(diary.contents).to eq "hello world"
  end

  it "returns the number of words in the content as an integer value" do
    diary = DiaryEntry.new("title", "hello world")    
    expect(diary.count_words).to eq 2
  end

  it "returns the estimated reading time of the contents given wpm" do
    diary = DiaryEntry.new("title", "hello world")    
    expect(diary.reading_time(2)).to eq 1
  end

  it "returns the exact reading time of the contents" do
    diary = DiaryEntry.new("title", "hello world rise and shine")    
    expect(diary.reading_time(2)).to eq 2.5
  end

  it "returns the first chunk of the contents that the user can read" do
    diary = DiaryEntry.new("title", "hello world rise and shine")    
    expect(diary.reading_chunk(2, 1)).to eq "hello world"
  end

  it "returns the next chunk of the contents that the user can read" do
    diary = DiaryEntry.new("title", "hello world rise and shine")
      diary.reading_chunk(2, 1) #run it first time - 1st chunk
      second_chunk = diary.reading_chunk(2, 1) #run it second time - next chunk
      expect(second_chunk).to eq "rise and"
  end

  it "restarts from the beginning when the contents have been fully read" do
    diary = DiaryEntry.new("title", "hello world rise and shine")
    diary.reading_chunk(2, 1)
    diary.reading_chunk(2, 1)
    diary.reading_chunk(2, 1)
    reset = diary.reading_chunk(2, 1)
    expect(reset).to eq "hello world"
  end

end
