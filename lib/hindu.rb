require 'feed'
require 'constants/constants'

module Fjira

  class Hindu < Feed

    def initialize
      super(FEEDS[:hindu][:title], FEEDS[:hindu][:url])
    end

  end

end
