require 'rom/initializer'

module ROM
  module AutoRegistrationStrategies
    class Base
      extend Initializer

      PathnameType = Dry::Types::Definition
                     .new(Pathname)
                     .constrained(type: Pathname)

      option :file, reader: true, type: Dry::Types['strict.string']

      EXTENSION_REGEX = /\.rb\z/.freeze
    end
  end
end
