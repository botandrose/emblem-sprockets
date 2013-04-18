require 'sprockets'
require 'sprockets/engines'
require 'barber-emblem'

module Emblem
  module Sprockets
    class Template < Tilt::Template
      def self.default_mime_type
        'application/javascript'
      end

      def prepare; end

      def evaluate(scope, locals, &block)
        target = template_target(scope)

        template = data

        if raw?(scope)
          template = precompile_emblem(template)
        else
          template = precompile_ember_emblem(template)
        end

        "#{target} = #{template}\n"
      end


      private

      def raw?(scope)
        scope.pathname.to_s =~ /\.raw\.(emblem)/
      end

      def template_target(scope)
        "Ember.TEMPLATES[#{template_path(scope.logical_path).inspect}]"
      end

      def precompile_emblem(string)
        Barber::Emblem::FilePrecompiler.call(string)
      end

      def precompile_ember_emblem(string)
        Barber::Emblem::EmberFilePrecompiler.call(string)
      end

      def template_path(path)
        path = path.split('/')
        path.shift # drop initial "templates/" prefix
        path.join('/')
      end
    end
  end
end
