require "fjira/version"
require 'fjira/feeds'
require 'fjira/cli_printer'

module Fjira

  CLIPrinter.print( Feeds.new.generate )

end
