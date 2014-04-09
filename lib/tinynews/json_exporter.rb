require 'json'
require 'tinynews/feed'

module TinyNews

  class JSONExporter

    def self.export feeds
      feeds.map do |feed_object|
        { title:  feed_object.title,
          news:   feed_object.stories
        }.to_json
      end
    end

  end

end
