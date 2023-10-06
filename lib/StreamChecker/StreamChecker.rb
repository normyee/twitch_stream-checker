require 'rest-client'
require "json"
require "launchy"
require "colorize"
require_relative "../config/config.rb"
require_relative "../utils/messageInfo.rb"


class StreamChecker

    def initialize(streamer)
        @streamer = streamer
        @is_broadcasting = false
        @stream_url = "https://www.twitch.tv/#{@streamer}"
        @url = "https://api.twitch.tv/helix/streams?user_login=#{@streamer}"
    end 

    def is_broadcasting
        @isBroadcasting
    end

    def set_broadcasting(boolean)
        @isBroadcasting = boolean
    end

    def execute
        response = RestClient.get(@url, {
            "Authorization": "Bearer " + Config.get_access_token,
            "Client-Id": Config.client_id
        })
        
        if (response.code >= 200 && response.code < 300 )
            data = JSON.parse(response)["data"][0]
            
            if (!data)
                puts "The streamer #{streamer} is offline".red
                set_broadcasting(false)
                return
            end
            messageInfo(@streamer, data["game_name"], data["title"], data["viewer_count"])
            set_broadcasting(true)
            Launchy.open(@stream_url)
            return
        end
        
        if (response.code >= 400 && response.code < 500)
            puts "Error: couldn't check streamer :(".red
            return
        end
    end
end