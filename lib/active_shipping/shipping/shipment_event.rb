module ActiveMerchant #:nodoc:
  module Shipping
    class ShipmentEvent
      attr_reader :name, :time, :location, :status_code, :message
      
      def initialize(name, time, location, status_code=nil, message=nil)
        @name, @time, @location, @status_code, @message = name, time, location, status_code, message
      end
      
      # defined so that if you call any of the subclass accessors, it doesn't raise any +NoMethodError+ exceptions
      def method_missing(method, *args)
        nil
      end
    end
    
    class ShipmentExceptionEvent < ShipmentEvent
      attr_reader :name, :time, :location, :status_code, :message, :status_exception_description, :status_exception_code
      
      def initialize(name, time, location, status_code=nil, message=nil, status_exception_description=nil, status_exception_code=nil)
        @name, @time, @location, @status_code, @message = name, time, location, status_code, message
        @status_exception_description = status_exception_description
        @status_exception_code = status_exception_code
      end
    end
  end
end