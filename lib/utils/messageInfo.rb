require "colorize"

def messageInfo(streamer, game_name, title, viewer_count)
    puts "====================================================".blue
    puts "The streamer #{streamer} is online now playing #{game_name} ".green
    puts "Title: ".green + "#{title}".blue
    puts "Viewers: ".green + "#{viewer_count}".red
    puts "====================================================".blue
    puts "Opening stream...".yellow
    sleep(1.8)
end