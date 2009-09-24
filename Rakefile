require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

desc "Default Task"
task :default => 'test:units'
task :test => ['test:units','test:remote']

# Run the unit tests

namespace :test do
  Rake::TestTask.new(:units) do |t|
    t.pattern = 'test/unit/**/*_test.rb'
    t.ruby_opts << '-rubygems'
    t.verbose = true
  end

  Rake::TestTask.new(:remote) do |t|
    t.pattern = 'test/remote/*_test.rb'
    t.ruby_opts << '-rubygems'
    t.verbose = true
  end
end

# Genereate the RDoc documentation
Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title    = "ActiveShipping library"
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README', 'CHANGELOG')
  rdoc.rdoc_files.include('lib/**/*.rb')
end



begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "active_shipping"
    # s.executables = "jeweler"
    s.summary = "Gemified activeshipping libs"
    s.email = "ben@bencarpenter.org"
    s.homepage = "http://github.com/bcarpenter/active_shipping"
    s.description = "Use for Fedex/UPS/USPS tracking and more... Originally from: http://github.com/Shopify/active_shipping"
    s.authors = ["Shopify"]
    s.files =  FileList["[A-Z]*", "{lib,examples}/**/*", "Rakefile"] - ["TODO.todo"]
    s.add_dependency 'activesupport'
  end
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install jeweler"
end