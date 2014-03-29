require "tinynews/version"
require 'tinynews/feeds'
require 'tinynews/cli_printer'

module TinyNews

  def self.print_in_cli feed_symbol
    CLIPrinter.print( get_feed(feed_symbol) )
  end

  def self.get_feed feed_symbol
    Feeds.new.generate(feed_symbol)
  end

end
