require 'rubygems'
require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'
require 'rake/gempackagetask'
require 'rake/contrib/rubyforgepublisher'


PKG_VERSION = "0.0.1"
PKG_NAME = "activeshipping"
PKG_FILE_NAME = "#{PKG_NAME}-#{PKG_VERSION}"

PKG_FILES = FileList[
    "lib/**/*", "examples/**/*", "[A-Z]*", "Rakefile"
].exclude(/\.svn$/)


spec = Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.summary = ""
  s.name = PKG_NAME
  s.version = PKG_VERSION
  s.requirements << 'activesupport or rails'
  s.require_path = 'lib'
  s.autorequire = 'rake'
  s.files = PKG_FILES
  s.description = <<EOF
EOF
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar = true
end


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

task :install => [:package] do
  `gem install pkg/#{PKG_FILE_NAME}.gem`
end
