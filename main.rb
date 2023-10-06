require "launchy"
require "colorize"
require 'rest-client'
require "json"
require_relative "lib/config/config.rb"

puts "What's your streamer name: ".green
streamer = gets.chomp
stream_url = "https://www.twitch.tv/#{streamer}"

url = "https://api.twitch.tv/helix/streams?user_login=#{streamer}"

response = RestClient.get(url, {
    "Authorization": "Bearer " + Config.get_access_token,
    "Client-Id": Config.client_id
})


if (response.code >= 200 && response.code < 300 )
    data = JSON.parse(response)["data"][0]
    if (!data)
        puts "The streamer #{streamer} is offline".red
        return
    end

    puts "The streamer #{streamer} is online now ".green
    puts "Opening stream...".yellow
    sleep(1.5)
    Launchy.open(stream_url)
    return

end

if (response.code >= 400 && response.code < 500)
    puts "Error: couldn't check streamer :(".red
    return
end


