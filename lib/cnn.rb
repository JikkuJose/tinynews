require 'feed'
require 'constants/constants'

module Fjira

  class CNN < Feed

    def initialize
      super("CNN", FEEDS[:cnn])
    end

  end

end
