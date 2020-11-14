songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def say_hello(name)
  "Hi #{name}!"
end 

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  
  if songs.include?(input)
    puts "Playing #{input}"
  else 
    song_num = input.to_i 
    if song_num < 1 || song_num > songs.length 
      puts "Invalid input, please try again"
    else 
      puts "Playing #{songs[song_num-1]}"
    end 
  end
end 

def list(songs)
  songs.each_with_index do |song, idx|
    puts "#{idx + 1}. #{song}"
  end 
end 

def exit_jukebox
  puts "Goodbye."
end 

def run(songs)
  puts "Please enter a command:"
  input = gets.chomp 
  
  if input == "list"
    list(songs)
  elsif input == "play"
    play(songs)
  elsif input == "help"
    help
  elsif input == "exit"
    exit_jukebox
  end 
end 