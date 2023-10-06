require 'rest-client'
require 'json'
require_relative "lib/config/config.rb"

client_id = Config.client_id
client_secret = Config.token

response = RestClient.post('https://id.twitch.tv/oauth2/token', {
  client_id: "mjn6056jj6ubovojrsz24ll5wow1hw",
  client_secret: "n03pc5nutd9v2t3kgkd5s1oaty5dxt",
  grant_type: 'client_credentials'
})

data = JSON.parse(response)

access_token = data['access_token']

puts data
puts access_token