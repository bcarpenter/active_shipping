# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{active_shipping}
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Shopify"]
  s.date = %q{2009-09-23}
  s.description = %q{Use for Fedex/UPS/USPS tracking and more... Originally from: http://github.com/Shopify/active_shipping}
  s.email = %q{ben@bencarpenter.org}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "CHANGELOG",
     "MIT-LICENSE",
     "README.markdown",
     "Rakefile",
     "Rakefile",
     "VERSION",
     "lib/active_shipping.rb",
     "lib/active_shipping/lib/connection.rb",
     "lib/active_shipping/lib/country.rb",
     "lib/active_shipping/lib/error.rb",
     "lib/active_shipping/lib/post_data.rb",
     "lib/active_shipping/lib/posts_data.rb",
     "lib/active_shipping/lib/requires_parameters.rb",
     "lib/active_shipping/lib/utils.rb",
     "lib/active_shipping/lib/validateable.rb",
     "lib/active_shipping/shipping/base.rb",
     "lib/active_shipping/shipping/carrier.rb",
     "lib/active_shipping/shipping/carriers.rb",
     "lib/active_shipping/shipping/carriers/bogus_carrier.rb",
     "lib/active_shipping/shipping/carriers/fedex.rb",
     "lib/active_shipping/shipping/carriers/shipwire.rb",
     "lib/active_shipping/shipping/carriers/ups.rb",
     "lib/active_shipping/shipping/carriers/usps.rb",
     "lib/active_shipping/shipping/location.rb",
     "lib/active_shipping/shipping/package.rb",
     "lib/active_shipping/shipping/rate_estimate.rb",
     "lib/active_shipping/shipping/rate_response.rb",
     "lib/active_shipping/shipping/response.rb",
     "lib/active_shipping/shipping/shipment_event.rb",
     "lib/active_shipping/shipping/tracking_response.rb",
     "lib/certs/cacert.pem",
     "lib/vendor/quantified/MIT-LICENSE",
     "lib/vendor/quantified/README.markdown",
     "lib/vendor/quantified/Rakefile",
     "lib/vendor/quantified/init.rb",
     "lib/vendor/quantified/lib/quantified.rb",
     "lib/vendor/quantified/lib/quantified/attribute.rb",
     "lib/vendor/quantified/lib/quantified/length.rb",
     "lib/vendor/quantified/lib/quantified/mass.rb",
     "lib/vendor/quantified/test/length_test.rb",
     "lib/vendor/quantified/test/mass_test.rb",
     "lib/vendor/quantified/test/test_helper.rb",
     "lib/vendor/test_helper.rb",
     "lib/vendor/xml_node/README",
     "lib/vendor/xml_node/Rakefile",
     "lib/vendor/xml_node/benchmark/bench_generation.rb",
     "lib/vendor/xml_node/init.rb",
     "lib/vendor/xml_node/lib/xml_node.rb",
     "lib/vendor/xml_node/test/test_generating.rb",
     "lib/vendor/xml_node/test/test_parsing.rb"
  ]
  s.homepage = %q{http://github.com/bcarpenter/active_shipping}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Gemified activeshipping libs}
  s.test_files = [
    "test/remote/fedex_test.rb",
     "test/remote/shipwire_test.rb",
     "test/remote/ups_test.rb",
     "test/remote/usps_test.rb",
     "test/test_helper.rb",
     "test/unit/base_test.rb",
     "test/unit/carriers/fedex_test.rb",
     "test/unit/carriers/shipwire_test.rb",
     "test/unit/carriers/ups_test.rb",
     "test/unit/carriers/usps_test.rb",
     "test/unit/location_test.rb",
     "test/unit/package_test.rb",
     "test/unit/response_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 0"])
    else
      s.add_dependency(%q<activesupport>, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 0"])
  end
end
