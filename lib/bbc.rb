require 'feed'
require 'constants/constants'

module Fjira

  class BBC < Feed

    def initialize
      super("BBC", FEEDS[:bbc])
    end

  end

end
