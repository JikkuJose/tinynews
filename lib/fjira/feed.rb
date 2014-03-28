require 'feedjira'

module Fjira

  class Feed
    attr_reader :title, :stories

    def initialize title, url
      @title = title
      @feed_url = url
      
      @stories = download_stories
    end
    
    private

    def download_stories
      feed = Feedjira::Feed.fetch_and_parse( @feed_url )
      feed.entries.map do |entry|
        entry.title
      end
    end
    
  end

end
