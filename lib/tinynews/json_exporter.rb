require 'json'
require 'tinynews/feed'

module TinyNews

  class JSONExporter

    def self.export feeds
      feeds.map do |feed_object|
        hash = { :title => feed_object.title,
                 :news => feed_object.stories
        }
        JSON.generate( hash )
      end
    end

  end

end
