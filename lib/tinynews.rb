require "tinynews/version"
require 'tinynews/feeds'
require 'tinynews/cli_printer'
require 'tinynews/json_exporter'

module TinyNews

  def self.get_feed feed_symbol
    Feeds.new.generate( feed_symbol )
  end

  def self.feed_as_json feed_symbol
    JSONExporter.export( get_feed(feed_symbol) )
  end

  def self.print_to_cli feed_symbol
    CLIPrinter.print( get_feed(feed_symbol) )
  end

  def self.say_hello
    puts "Hello"
  end

  def self.sources_from_home
    source_file = File.expand_path('~/.tinynews.yml')
    unless File.file?( source_file )
      File.open( source_file, "w") do |f|
        f.write( File.open("../sources.yml", "r").read )
      end
    end
    f = open(source_file, "r").read
    YAML::load( f )
  end

end
