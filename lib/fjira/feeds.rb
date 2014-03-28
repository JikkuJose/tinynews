require 'fjira/feed'
require 'yaml'

module Fjira
 
 class Feeds

   def initialize
     sources_file = File.open('sources.yml', 'r').read
     @sources = YAML::load( sources_file ) 
   end

   def generate
     feeds = []
     @sources.keys.each do |symbol|
       feeds << generate_feed_object_for( symbol )
     end
     feeds
   end

   private

   def generate_feed_object_for feed_symbol
     source = @sources[feed_symbol]
     Feed.new( source[:title], source[:url] )
   end

 end 

end
