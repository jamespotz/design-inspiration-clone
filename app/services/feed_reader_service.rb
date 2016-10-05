require 'feedjira'
require 'faraday'
require 'net/http'
class FeedReaderService
  attr_reader :url
  def initialize(url)
    @url = Faraday.get(url).body
  end

  def fetch
    Feedjira::Feed.parse @url
  end
end
