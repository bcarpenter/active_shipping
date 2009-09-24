module ActiveMerchant #:nodoc:
  module Shipping
      
    class ShipmentEvent
      attr_reader :name, :time, :location, :status_code, :message
      
      def initialize(name, time, location, status_code=nil, message=nil)
        @name, @time, @location, @status_code, @message = name, time, location, status_code, message
      end
      
    end
    
  end
end