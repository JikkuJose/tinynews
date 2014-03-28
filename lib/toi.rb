require 'feed'
require 'constants/constants'

module Fjira

  class Toi < Feed

    def initialize
      super("TOI", FEEDS[:toi])
    end

  end

end
