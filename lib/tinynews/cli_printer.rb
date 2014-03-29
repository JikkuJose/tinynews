module TinyNews

  class CLIPrinter

    def self.print feeds
      feeds.each do |feed_object|
        puts "\n#{feed_object.title}:"
        feed_object.stories[1..10].each do |story|
          puts "- #{story}"
        end
      end
    end

  end

end

