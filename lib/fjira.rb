require "fjira/version"
require 'feedjira'
require 'constants/constants'

module Fjira

  class Hindu

    def self.feed
      feed = Feedjira::Feed.fetch_and_parse(FEEDS[:hindu])
      feed.entries.each do |entry|
        puts entry.title
      end
    end

  end
end
