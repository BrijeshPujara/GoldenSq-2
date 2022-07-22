require "music"

RSpec.describe Music do
  it "adds music tracks listened to" do
    music = Music.new()
    expect(music.add_tracks("Drake")).to eq ["Drake"]  
  end

  it "displays a list of tracks" do
    music = Music.new()
    music.add_tracks("Drake")
    music.add_tracks("Adele")
    music.add_tracks("Justin Beiber")
    expect(music.list_tracks()).to eq ["Drake", "Adele", "Justin Beiber"]  
  end

  it "throws am error when no argument given" do 
    music = Music.new()
    expect{ music.add_tracks() }.to raise_error ArgumentError
  end


end
