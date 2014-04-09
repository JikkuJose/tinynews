require 'rainbow'

module TinyNews

  class CLIPrinter

    def self.print feeds
      feeds.each do |feed_object|
        puts "\n#{feed_object.title.color(:blue)}:"
        feed_object.stories.each do |story|
          puts "-".color(:yellow) << " #{story}"
        end
      end
    end

  end

end

