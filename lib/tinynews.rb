require "tinynews/version"
require 'tinynews/feeds'
require 'tinynews/cli_printer'

module TinyNews

  def self.print feed_symbol
    CLIPrinter.print( Feeds.new.generate(feed_symbol) )
  end

end
