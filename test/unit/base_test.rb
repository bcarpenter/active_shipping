require File.dirname(__FILE__) + '/../test_helper'

class BaseTest < Test::Unit::TestCase
  include ActiveMerchant::Shipping

  def test_get_usps_by_string
    assert_equal USPS, Base.carrier('usps')
    assert_equal USPS, Base.carrier('USPS')
  end

  def test_get_usps_by_name
    assert_equal USPS, Base.carrier(:usps)
  end
  
  def test_get_unknown_carrier
    assert_raise(NameError){ Base.carrier(:polar_north) }
  end
  
  def test_shipment_exception_event_sanity
    assert ShipmentExceptionEvent.new('bar', Time.now, 'mars').kind_of?(ShipmentExceptionEvent)
  end
  
  def test_shipment_exception_event_status_accessors
    see = ShipmentExceptionEvent.new('foo', Time.now, 'earth', '9999', nil, 'the package was destroyed', '95ABC')
    assert_equal '9999', see.status_code
    assert_equal '95ABC', see.status_exception_code
    assert_equal 'the package was destroyed', see.status_exception_description
    assert_nil see.message
    
    e = ShipmentEvent.new('bar', Time.now, 'mars')
    assert_nothing_raised do
      assert_nil e.status_exception_code
      assert_nil e.status_exception_description
      assert_nil e.foobar('1')
    end
  end
  
end
