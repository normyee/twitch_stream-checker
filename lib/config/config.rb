require "dotenv/load"
require "rest-client"
require "json"

class Config
  @CLIENT_ID = ENV["CLIENT_ID"]
  @CLIENT_SECRET = ENV["CLIENT_SECRET"]

  def self.client_id
    @CLIENT_ID
  end

  def self.client_secret
    @CLIENT_SECRET
  end

  def self.get_access_token
    response = RestClient.post('https://id.twitch.tv/oauth2/token', {
      client_id: self.client_id,
      client_secret: self.client_secret,
      grant_type: 'client_credentials'
    })
    data = JSON.parse(response)
    access_token = data['access_token']

    return access_token
  end
end