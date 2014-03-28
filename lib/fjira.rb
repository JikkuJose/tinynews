require "fjira/version"
require 'feedjira'
require 'feed'
require 'cli_printer'

module Fjira

  def self.feeds
    content_sources = FEEDS.keys
    feeds = []
    content_sources.each do |source|
      feeds << Feed.new(source.to_sym)
    end
    feeds
  end

  CLIPrinter.print self.feeds

end
