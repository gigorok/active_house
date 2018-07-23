require 'active_support/concern'

module ActiveHouse
  module Logger
    extend ActiveSupport::Concern

    class_methods do
      def logger
        Clickhouse.logger
      end
    end

    def logger
      self.class.logger
    end
  end
end
