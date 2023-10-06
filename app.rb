require_relative "./lib/StreamChecker/StreamChecker.rb"

puts "What's your streamer name: ".green

streamer = gets.chomp
streamChecker = StreamChecker.new(streamer)

streamChecker.execute



