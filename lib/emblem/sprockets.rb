require 'emblem/sprockets/version'
require 'emblem/sprockets/integration'
require 'barber/precompiler'

module Emblem
  module Sprockets
    def self.integrate sprockets
      Integration.integrate sprockets
    end
  end
end
