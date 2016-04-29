module JFlow
  module Exceptions
    class Common < StandardError

      attr_reader :original, :message

      def initialize(exception)
        super(exception.message)
        @message  = exception.message
        @original = exception.class.name
        set_backtrace(exception.backtrace)
      end
    end
  end
end