require 'emblem/sprockets/template'

module Emblem
  module Sprockets
    module Integration
      def self.integrate sprockets
        sprockets.register_engine '.emblem', Emblem::Sprockets::Template
      end
    end
  end
end
