require 'feedjira'
require 'constants/constants'

module Fjira

  class Feed
    attr_reader :title, :stories

    def initialize feed_symbol
      @title = FEEDS[feed_symbol][:title]
      @feed_url = FEEDS[feed_symbol][:url]
      
      download_stories
    end
    
    private

    def download_stories
      feed = Feedjira::Feed.fetch_and_parse( @feed_url )
      @stories = feed.entries.map do |entry|
        entry.title
      end
    end
    
  end

end
