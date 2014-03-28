require 'yaml'
require_relative './lib/constants/constants'

module Fjira
  def self.generate
    File.open( "sources.yml", "w" ) do |f|
      f.write( YAML::dump(FEEDS) )
    end 
  end 

end


Fjira::generate
